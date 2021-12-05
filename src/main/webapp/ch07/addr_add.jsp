<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="avo" class="jspStudy.ch07.AddrVO"/>
<jsp:setProperty name="avo" property="*"/>
<jsp:useBean id="adao" class="jspStudy.ch07.AddrDAO" scope="application"/>
<%
	adao.add(avo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr add jsp</title>
</head>
<body>
	<div align=center>
		<h2>등록 내용</h2>
		이름 : <jsp:getProperty property="username" name="avo"/><p>
		전화번호 : <%=avo.getTel() %><p>
		이메일 : <%=avo.getEmail() %><p>
		성별 : <%=avo.getSex() %>
		<hr>
		<a href="addr_list.jsp">목록 보기</a>
	</div>

</body>
</html>