<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item Tag Test</title>
</head>
<body>
	<div align=center>
		<h2>태그 핸들러 예제 - Product Item</h2>
		<hr>
		<mytag:item border="3" bgcolor="yellow"><%=request.getRemoteAddr() %>재고현황</mytag:item>
		
	</div>

</body>
</html>