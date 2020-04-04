<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

<h1>입력된 아이디는 <%= id %></h1>
<h1>입력된 패스워드는 <%= pw %></h1>
<a href="../index.jsp">홈 가기</a>

</body>
</html>