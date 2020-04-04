<%@page import="co.micol.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%!boolean b;%>
<body>
	<div align="center">

		<%
			String id = request.getParameter("cid");
			MemberDao dao = new MemberDao();
			b = dao.isIdCheck(id);
			if (b) { //b가 false인 경우 존재하지 않는 아이디
		%>
 
		<h1><%= id %>는 사용가능한 id입니다.</h1>
		<script>//새창 오픈하여 새로운 창의 이름에 
			window.opener.document.frm.idChk.value = "Checked"; //id중복체크 조건 pass하도록 
			window.opener.document.frm.pw.focus();//pw입력하도록
		</script>
		<%
			} else { //b가 true인 경우 존재하는 아이디
		%>
		<h1>이미 존재하는 id입니다.</h1>
		<script>
			window.opener.document.frm.id.value = ""; //id value값 비우고
			window.opener.document.frm.id.focus(); // 다시 입력하도록 focus
		</script>
		<%
			}
		%>

		<div>
			<br />
			<button type="button" onclick="window.close()">확인</button>

		</div>
	</div>
</body>
</html>