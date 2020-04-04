<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	// 세션에 값 설정하기
		session.setAttribute("mySessionName", "chororong"); //"key_변수명","value_변수의 값" 
		session.setAttribute("myNum", 12345);
	
	%>
	
	<a href="sessionget.jsp">세션값 확인하기</a>
</body>
</html>