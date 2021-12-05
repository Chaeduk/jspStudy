<%@page import="jspStudy.ch07.AddrVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="adao" class="jspStudy.ch07.AddrDAO" scope="application"/>
<html>
<head>
<meta charset="UTF-8">
<title>addr list jsp</title>
</head>
<body>
	<div align="center">
		<h2>주소록</h2>
		<hr>
		<a href="addr_form.html">주소추가</a><p>
			<table border=1 width=500>
				<tr>
					<td>이름</td>
					<td>전화번호</td>
					<td>이메일</td>
					<td>성별</td>
				</tr>
				<%
					for(AddrVO vo: adao.getAddrList()){
				%>
					<tr>
						<td><%=vo.getUsername() %></td>
						<td><%=vo.getTel() %></td>
						<td><%=vo.getEmail() %></td>
						<td><%=vo.getSex() %></td>
					</tr>
				<%
					}
				%>
			</table>
	</div>

</body>
</html>