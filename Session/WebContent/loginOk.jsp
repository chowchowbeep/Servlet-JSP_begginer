<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!String id, pw;%>
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");

		if (id.equals("abcde") && pw.equals("12345")) { //id,pw확인해서 맞으면
			session.setAttribute("id", id); //session 객체에 id값 설정 //session타임은 web.xml에서 15분으로 설정
			response.sendRedirect("welcome.jsp"); //session값가져와서 welcome.jsp로 보냄
		} else {
			response.sendRedirect("index.jsp"); //아님 index.jsp가서 로그인 
		}
	%>
</body>
</html>