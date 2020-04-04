<%@page import="java.sql.Date"%> <!-- dat는 반드시 sql에서 import -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% request.setCharacterEncoding("utf-8"); %>

</head>
<body>
	<div align="center">
		<div id="topmenu"><%@ include file="topMenu.jsp"%></div>
		<div>
			<h1>공지사항 입력내용</h1>
		</div>
		<div>
			<% 
			String name = request.getParameter("name"); 
			Date wdate = Date.valueOf(request.getParameter("wdate"));//날짜타입으로 변경필수
			String subject = request.getParameter("subject");
			String contents = request.getParameter("contents");
			%>
			이름 : <%=name %> <br /> 
			작성일자 : <%=wdate %> <br /> 
			제목 : <%=subject %> <br /> 
			내용 : <%=contents %> <br /> <br /> 
		</div>
		<div>
			<button type="button" onclick="location.href='notice.jsp'">목록보기</button>
		</div>
		
		<div id="footer"><%@ include file="footer.jsp"%></div>
	</div>
</body>
</html>