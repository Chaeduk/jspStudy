<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Select JSP</title>
</head>
<body>
	<div align=center>
		<h2>상품 선택</h2>
		<hr>
		선택한 상품은 : ${param.sel }<br>
		num1 + num2 = ${product.num1 + product.num2 }<br>
	</div>

</body>
</html>