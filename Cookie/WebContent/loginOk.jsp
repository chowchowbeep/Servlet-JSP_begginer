<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id, pw;
	%>
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		if(id.equals("abcde") && pw.equals("12345")) { //id,pw확인해서 맞으면
			Cookie cookie = new Cookie("id", id); //쿠키생성
			cookie.setMaxAge(60); //60초로 쿠키의 유효시간 설정
			response.addCookie(cookie); //reponse객체에 쿠키 담아요
			Cookie cookie1 = new Cookie("pw", pw);
			response.addCookie(cookie1); 
			response.sendRedirect("welcome.jsp"); //쿠키 담아서 welcome.jsp로 가요
		} else {
			response.sendRedirect("index.jsp"); //아님 index.jsp가서 로그인 
		}
	%>
</body>
</html>