<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
	<div align="center">
		<h2>session 예제</h2><hr>
		<%
			if(session.isNew()){
				out.println("<script>alert('세션 해제되어 다시 설정')</script>");
				session.setAttribute("login", "강호동");
			}
		%>
		#<%=session.getAttribute("login") %>님 환영합니다!!<br>
		1. 세션 ID : <%=session.getId() %><br>
		2. 세션 유지시간 : <%=session.getMaxInactiveInterval() %><br>
	</div>
</body>
</html>