<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List JSP</title>
</head>
<body>
	<div align=center>
		<h2>상품 목록</h2><br>
		<form name=form1 method=POST action=product_sel.jsp>
			<jsp:useBean id="product" class="jspStudy.ch09.Product" scope="session"></jsp:useBean>
			<select name="sel">
			<%
				for(String item : product.getProductList()){
					out.println("<option>"+item+"</option>");
				}
			%>
			</select>
			<input type="submit" value="선택"/>
		</form>
	</div>

</body>
</html>