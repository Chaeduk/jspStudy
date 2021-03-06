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
    		String sql = "insert into jdbc_test values(?,?)";
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1,request.getParameter("username"));
    		pstmt.setString(2,request.getParameter("email"));
    		
    		if(request.getParameter("username")!=null){
    			pstmt.executeUpdate();
    		}
    	}
    	catch(Exception e){
    		System.out.println(e);
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC TEST JSP</title>
</head>
<body>
	<div align="center">
		<h2>이벤트 등록</h2>
		<hr>
		<form name=form1 method=post>
			등록이름: <input type=text name=username>
			주소 : <input type=text name=email size=20>
			<input type=submit value="등록">
		</form>
		<hr>
		<%
			try{
				String sql = "select username, email from jdbc_test";
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				int i = 1;
				
				while(rs.next()){
					out.println(i+":"+rs.getString(1)+","+rs.getString(2)+"<br>");
					i++;
				}
				rs.close();
				pstmt.close();
				conn.close();
			}
		catch(Exception e){
			System.out.println(e);
		}
		%>
	</div>

</body>
</html>