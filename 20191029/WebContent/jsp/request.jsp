<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	URL : <%=request.getRequestURL()%><br> 
	URI : <%=request.getRequestURI()%><br> 
	ContextPath : <%= request.getContextPath() %><br> 
	Port : <%=request.getServerPort() %><br> 
	Protocol : <%=request.getProtocol() %><br> 
	
	
</body>
</html>