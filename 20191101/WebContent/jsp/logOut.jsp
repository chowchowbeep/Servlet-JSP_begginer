<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!String cid;%>
	<%
		cid = (String) session.getAttribute("id");
		session.removeAttribute("id");
		session.removeAttribute("pw");
		session.removeAttribute("grant");
	%>

	<!-- 로그인되어 있지 않으면 -->
	<c:if test="${grant == null}">
		<%=cid%>님 정상적으로 로그아웃되었습니다.
		<a href="login.jsp">로그인</a>
	</c:if>
	<a href="main.jsp">홈으로</a>

</body>
</html>