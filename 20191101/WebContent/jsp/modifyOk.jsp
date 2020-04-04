<%@page import="co.micol.dao.MemberDao"%>
<%@page import="co.micol.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<%!int n;%>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");

		MemberDao dao = new MemberDao();
		n = dao.update(id, name, addr);
	%>
	
	<!-- id값은 다음과 같이 세션에서 받아올 수도 있음 String id = (String) session.getAttribute("id");  -->
</head>
<body>
		<%
		if (n != 0) {
			out.print("회원정보수정 성공");
		} else {
			out.print("회원정보수정 실패");
		}
	%>
	<br />
	<a href="main.jsp">메인으로 돌아가기</a>
</body>
</html>
	