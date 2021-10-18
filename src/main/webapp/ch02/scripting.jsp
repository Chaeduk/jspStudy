<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 디렉티브 태그 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	
	<%!int count=3;
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	<!-- 선언문 태그를 이용하여 자바 변수와 메소드 정의 -->
	
	<%
		for(int i=1; i<=count; i++){
			out.println("Java Server Pages"+i+".<br>");
		}
	%>
	<!-- 스크립트릿 태그로 자바 로직 코드 작성 -->
	
	<%=makeItLower("Hello World")%>
	<!-- 표현식 태그로 선언문의 메소드를 호출하여 문자열 형태로 출력 -->

</body>
</html>