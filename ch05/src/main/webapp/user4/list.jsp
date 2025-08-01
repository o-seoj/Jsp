<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="vo.User4VO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
//목록 출력 list 생성
	List<User4VO> users = new ArrayList<>();

	try {
		// 자바 기본 환경객체 검색(WAS 환경)
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		
		// jdbc/chhak0503 커넥션풀 검색
		DataSource ds = (DataSource) ctx.lookup("jdbc/os3754");
		
		Connection conn = ds.getConnection();
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM USER4");
		
		while(rs.next()){
			
			User4VO dto = new User4VO();
			dto.setName(rs.getString(1));
			dto.setGender(rs.getString(2));
			dto.setAge(rs.getString(3));
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
		<title>user4::list</title>
	</head>
	<body>
		<h3>User4 목록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		
		<table border="1">
			<tr>
				<th>이름</th>
				<th>성별</th>
				<th>나이</th>
				<th>주소</th>
			</tr>
			<%for(User4VO user4VO : users){ %>
			<tr>
				<td><%=user4VO.getName() %></td>			
				<td><%=user4VO.getGender() %></td>			
				<td><%=user4VO.getAge() %></td>			
				<td><%=user4VO.getAddr() %></td>			
				<td>
					<a href="./modify.jsp?name=<%=user4VO.getName()%>">수정</a>
					<a href="./delete.jsp?name=<%= user4VO.getName()%>">삭제</a>
				</td>
			</tr>
			<%} %>
		</table>
	</body>
</html>