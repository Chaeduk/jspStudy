<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int num1=0, num2=0, result=0;
	
	if(request.getMethod().equals("POST")){
		String op = request.getParameter("operator");
		
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		
		if(op.equals("+")){result = num1+num2;}
		if(op.equals("-")){result = num1-num2;}
		if(op.equals("*")){result = num1*num2;}
		if(op.equals("/")){result = num1/num2;}
		
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
	<div align="center">
		<h3>계산기: 스크립트릿 사용</h3>
		<hr>
		<form name=form1 action="calculate.jsp" method=post>
			<input type="text" name="num1" width=200 size="5">
			<select name="operator">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select>
			<input type="text" name="num2" width=200 size="5">
			<input type="submit" value="계산" name="B1">
			<input type="reset" value="다시입력" name="B2">
		</form>
		<hr>
		계산결과: <%=result %>
	</div>

</body>
</html>