<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!-- html 폼에서 입력된 값을 서버로 전달될 때 한글처리를 위한 캐릭터셋 변환이 필요 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test result</title>
</head>
<body>
	<div align="center">
		<h2>request 테스트 결과</h2>
		<table>
			<tr>
				<td>계정</td>
				<td><%=request.getParameter("userid") %></td>
			</tr>
			<tr>
				<td>암호</td>
				<td><%=request.getParameter("password") %></td>
			</tr>
			<tr>
				<td>클라이언트 IP주소</td>
				<td><%=request.getRemoteAddr() %></td>
			</tr>
		</table>
	</div>

</body>
</html>