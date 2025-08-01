<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.User5VO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<User5VO> users = new ArrayList<>();

	try{
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		
		DataSource ds = (DataSource) ctx.lookup("jdbc/os3754");
		
		Connection conn =  ds.getConnection();
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM USER5");
		
		while(rs.next()){
			User5VO dto = new User5VO();
			dto.setName(rs.getString(1));
			dto.setGender(rs.getString(2));
			dto.setAge(rs.getInt(3));
			dto.setAddr(rs.getString(4));
			
			users.add(dto);
			
		}
		rs.close();
		stmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
		
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user5::list</title>
	</head>
	<body>t
		<h3>User5 목록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		
		<table border="1">
			<tr>
				<th>이름</th>
				<th>성별</th>
				<th>나이</th>
				<th>주소</th>
			</tr>
			<%for(User5VO user5VO : users){ %>
			<tr>
				<td><%=user5VO.getName() %></td>			
				<td><%=user5VO.getGender() %></td>			
				<td><%=user5VO.getAge() %></td>			
				<td><%=user5VO.getAddr() %></td>			
				<td>
					<a href="./modify.jsp?name=<%=user5VO.getName()%>">수정</a>
					<a href="./delete.jsp?name=<%= user5VO.getName()%>">삭제</a>
				</td>
			</tr>
			<%} %>
		</table>
	</body>
</html>