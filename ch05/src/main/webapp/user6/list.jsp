<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.User6VO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<User6VO> users = new ArrayList<>();
	
	try{
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		
		DataSource ds = (DataSource) ctx.lookup("jdbc/os3754");
		
		Connection conn = ds.getConnection();
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM USER6");
		
		while(rs.next()){
			User6VO dto = new User6VO();
			dto.setSeq(rs.getInt(1));
			dto.setName(rs.getString(2));
			dto.setGender(rs.getString(3));
			dto.setAge(rs.getInt(4));
			dto.setAddr(rs.getString(5));
			
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
		<title>user6::list</title>
	</head>
	<body>
		<h3>User6 목록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		
		<table border="1">
			<tr>
				<th>순번</th>
				<th>이름</th>
				<th>성별</th>
				<th>나이</th>
				<th>주소</th>
			</tr>
			<%for(User6VO user6VO : users){ %>
			<tr>
				<td><%=user6VO.getSeq() %></td>
				<td><%=user6VO.getName() %></td>
				<td><%=user6VO.getGender() %></td>
				<td><%=user6VO.getAge()%></td>
				<td><%=user6VO.getAddr() %></td>
					
	
		
				<td>
					<a href="./modify.jsp?seq=<%=user6VO.getSeq()%>">수정</a>
					<a href="./delete.jsp?seq=<%= user6VO.getSeq()%>">삭제</a>
				</td>
			</tr>
			<%} %>
		</table>
	</body>
</html>