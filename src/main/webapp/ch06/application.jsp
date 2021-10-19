<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 예제</title>
</head>
<body>
	<%
		application.setAttribute("username", "강호동");
		application.log("username=강호동");
		application.setAttribute("count",1);
	%>
	<a href="application_result.jsp">확인하기</a>

</body>
</html>