<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward action</title>
</head>
<body>
	<h2>forward_action.jsp에서 forward한 메시지입니다.</h2>
	<jsp:forward page="footer.jsp">
	<jsp:param value="tel@kpu.net" name="email"/>
	<jsp:param value="000-777-0000" name="tel"/>
	</jsp:forward>
</body>
</html>