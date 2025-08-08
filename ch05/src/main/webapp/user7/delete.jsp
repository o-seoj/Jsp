<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String id = request.getParameter("id");
	
	try {	
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");				
		DataSource ds = (DataSource) ctx.lookup("jdbc/os3754");

		Connection conn = ds.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER7 WHERE ID = ?");
		psmt.setInt(1, Integer.parseInt(id));
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("/ch05/user7/list.jsp");
%>