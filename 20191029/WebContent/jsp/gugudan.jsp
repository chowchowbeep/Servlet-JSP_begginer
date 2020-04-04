<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 이것은 주석입니다 --%>
	<%!
	public int result; //구구단 결과
	public int i; //증가지수(1~9)
	
	public int sum(int n, int m){
		return n+m;
	}
	%>

	<%="========구구단========"%><br>
	
	<%
		for (i = 1; i <= 9; i++) {
			result = 2 * i;
			out.print("2 * " + i + " = " + result); %> 
			<br />
	<%	
	}
	%>
	
	<%= sum(5,10) %>

</body>
</html>