<%@page import="co.micol.dto.MemberDto"%>
<%@page import="co.micol.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 전역변수로 사용하기 위해 별도로 선언 -->
<%!int n;%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String addr = request.getParameter("addr");

	MemberDto dto = new MemberDto(id, name, pw, addr);
	MemberDao dao = new MemberDao();
	n = dao.insert(dto);
%>
</head>
<body>
	<%
		if (n != 0) {
			out.print("회원가입 성공");
		} else {
			out.print("회원가입 실패");
		}
	%>
</body>
</html>