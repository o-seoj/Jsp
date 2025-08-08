<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.User7VO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<User7VO> users = new ArrayList<>();
	
	try{
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		
		DataSource ds = (DataSource) ctx.lookup("jdbc/os3754");
		
		Connection conn = ds.getConnection();
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM USER7");
		
		while(rs.next()){
			User7VO dto = new User7VO();
			dto.setId(rs.getInt(1));
			dto.setName(rs.getString(2));
			dto.setAge(rs.getInt(3));
			dto.setEmail(rs.getString(4));
			
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
				<th>아이디</th>
				<th>이름</th>
				<th>나이</th>
				<th>이메일</th>
			</tr>
			<%for(User7VO user7VO : users){ %>
			<tr>
				<td><%=user7VO.getId() %></td>
				<td><%=user7VO.getName() %></td>
				<td><%=user7VO.getAge() %></td>
				<td><%=user7VO.getEmail()%></td>

		
				<td>
					<a href="./modify.jsp?id=<%=user7VO.getId()%>">수정</a>
					<a href="./delete.jsp?id=<%= user7VO.getId()%>">삭제</a>
				</td>
			</tr>
			<%} %>
		</table>
	</body>
</html>