<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="vo.User7VO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String email = request.getParameter("email");

	User7VO user7 =null;
	try{
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		DataSource ds = (DataSource) ctx.lookup("jdbc/os3754");
		
		Connection conn = ds.getConnection();
		
		String sql = "SELECT * FROM USER7 WHERE ID=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
	
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			user7 = new User7VO();
			user7.setId(rs.getInt(1));
			user7.setName(rs.getString(2));
			user7.setAge(rs.getInt(3));
			user7.setEmail(rs.getString(4));

		}
		
		rs.close();
		psmt.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user7::modify</title>
	</head>
	<body>
		<h3>user7 수정</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./list.jsp">목록이동</a>
	
		<form action="./proc/modify.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="number" name="id" readonly value="<%=user7.getId()%>" placeholder="이름 입력"/></td>					
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="<%=user7.getName()%>" placeholder="이름 입력"/></td>					
				</tr>			
				<tr>
					<td>나이</td>
					<td><input type="number" name = "age" value="<%=user7.getAge()%>" placeholder="나이 입력"/></td>		
				</tr>	<tr>
					<td>이메일</td>
					<td><input type="text" name="email" value="<%=user7.getEmail()%>" placeholder="주소 입력"/></td>					
				</tr>
				<tr>					
					<td colspan="2" align="right">
						<input type="submit" value="수정하기"/>
					</td>
				</tr>	
			</table>
		</form>
	</body>
</html>