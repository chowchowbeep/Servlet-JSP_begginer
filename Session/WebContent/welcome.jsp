<%@page import="java.util.Enumeration"%>
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
		Enumeration enumeration = session.getAttributeNames(); //세션의 모든 변수값 받음
		while(enumeration.hasMoreElements()){ //존재하는 요소를 하나씩 읽어감
			String sName = enumeration.nextElement().toString(); 
			String sValue = (String)session.getAttribute(sName);
		
			if(sValue.equals("abcde")) 
				out.println(sValue + "님 안녕하세요");
	}
	%>
	<br />
	<a href="logout.jsp">로그아웃</a>
</body>
</html>