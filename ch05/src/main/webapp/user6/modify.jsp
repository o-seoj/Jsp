<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="vo.User6VO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	String seq = request.getParameter("seq");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");

	User6VO user6 =null;
	try{
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		DataSource ds = (DataSource) ctx.lookup("jdbc/os3754");
		
		Connection conn = ds.getConnection();
		
		String sql = "SELECT * FROM USER6 WHERE SEQ=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, seq);
	
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			user6 = new User6VO();
			user6.setSeq(rs.getInt(1));
			user6.setName(rs.getString(2));
			user6.setGender(rs.getString(3));
			user6.setAge(rs.getInt(4));
			user6.setAddr(rs.getString(5));
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
		<title>user6::modify</title>
	</head>
	<body>
		<h3>user6 수정</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./list.jsp">목록이동</a>
	
		<form action="./proc/modify.jsp" method="post">
			<table border="1">
				<tr>
					<td>순번</td>
					<td><input type="number" name="name" readonly value="<%=user6.getSeq()%>" placeholder="이름 입력"/></td>					
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="<%=user6.getName()%>" placeholder="이름 입력"/></td>					
				</tr>			
				<tr>
					<td>성별</td>
					<td>
					<label><input type="radio" name="gender" value="M" <%= user6.getGender().equals("M") ? "checked" : "" %>> 남자</label>
					<label><input type="radio" name="gender" value="F" <%= user6.getGender().equals("F") ? "checked" : "" %>> 여자</label>
					</td>
				</tr>	
				<tr>
					<td>나이</td>
					<td><input type="number" name = "age" value="<%=user6.getAge()%>" placeholder="나이 입력"/></td>		
				</tr>	<tr>
					<td>주소</td>
					<td><input type="text" name="addr" value="<%=user6.getAddr()%>" placeholder="주소 입력"/></td>					
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