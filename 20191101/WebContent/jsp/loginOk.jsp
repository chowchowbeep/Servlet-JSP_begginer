<%@page import="co.micol.dao.MemberDao"%>
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String grant;
		MemberDao dao = new MemberDao();
		grant = dao.isLoginCheck(id, pw); //아이디가 존재하는 경우 grant에 리턴값이 담김
		if (grant == null) {
	%>
	
	<script>
		alert("로그인실패. 다시입력하세요");
		document.location = "login.jsp";
	</script>


	<%
		} else { //아이디 비밀번호 맞음 //세션에 값을 담기
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			session.setAttribute("grant", grant);
			response.sendRedirect("main.jsp");
			//<jsp:forward page="main.jsp" /> 
		}
	%>
</body>
</html>