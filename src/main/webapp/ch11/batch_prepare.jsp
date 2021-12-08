<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%
    	Connection conn = null;
    	PreparedStatement pstmt = null;
    	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
    	String jdbc_url = "jdbc:mysql://localhost/jspdb?allowPublicKeyRetrieval=true&useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=UTC";
    	try{
    		Context initContext = new InitialContext();
    		Context envContext = (Context)initContext.lookup("java:/comp/env");
    		DataSource ds = (DataSource)envContext.lookup("jdbc/mysql");
    		conn = ds.getConnection();
    		conn.setAutoCommit(false);
    		if(request.getParameter("username1")!=null && request.getParameter("username2")!=null){
    			String sql = "insert into jdbc_test values(?,?)";
    			pstmt = conn.prepareStatement(sql);
    			pstmt.setString(1, request.getParameter("username1"));
    			pstmt.setString(2, request.getParameter("email1"));
    			pstmt.addBatch();
    			pstmt.setString(1, request.getParameter("username2"));
    			pstmt.setString(2, request.getParameter("email2"));
    			pstmt.addBatch();
    			pstmt.executeBatch();
    			pstmt.clearBatch();
    			conn.commit();
    		}
    		
    	}
    	catch(Exception e){
    		System.out.println(e);
    		conn.rollback();
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC TEST JSP</title>
</head>
<body>
	<div align=center>
		<h2>이벤트 등록 : rollback test</h2>
		<hr>
		<form name=form1 method=post>
			등록 이름1 : <input type=text name=username1>
			주소1 : <input type=text name=email1 size=20><br>
			등록 이름2: <input type=text name=username2>
			주소2 : <input type=text name=email2 size=20>
			<input type=submit value="등록">
		</form>
		<hr>
	</div>

</body>
</html>