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
		Cookie[] cookies = request.getCookies(); //쿠키객체는 배열 //클라이언트로부터 쿠키값 get
		out.println(cookies.length);
		
		for(int i=0; i<cookies.length; i++){
			out.println("<br />"+i+"번 인덱스 출력<br />");

			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			out.println("name : "+name+", value : "+value+" | ");
			if(value.equals("abcde")) {
				out.println(value+"안녕");
			}
			
		}
		
	%>
	<br /><a href="logout.jsp">로그아웃</a>
</body>
</html>