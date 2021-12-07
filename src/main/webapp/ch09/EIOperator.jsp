<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Operator</title>
</head>
<body>
	요청 URL : ${pageContext.request.requestURI } <br> <hr>
	X = ${param.NUM1 }, Y = ${param.NUM2 } <br> <hr>
	X + Y = ${param.NUM1 + param.NUM2 } <br>
	X - Y = ${param.NUM1 - param.NUM2  } <br>
	X * Y = ${param.NUM1 * param.NUM2 } <br>
	X / Y = ${param.NUM1 / param.NUM2 } <br>
	X % Y = ${param.NUM1 % param.NUM2 } <br>
	X가 더 큽니까? ${param.NUM1 - param.NUM2 >0 } <br>
	Y가 더 큽니까? ${param.NUM1 - param.NUM2 <0 } <br><br>
	X와 Y가 모두 양수입니까? ${(param.NUM1 > 0) && (param.NUM2 > 0)} <br><br>
	X와 Y가 같습니까? ${param.NUM1 == param.NUM2 ? "예" : "아니오" }<br><br>
</body>
</html>