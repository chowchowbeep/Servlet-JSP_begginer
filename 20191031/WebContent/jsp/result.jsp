<%@ page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- 한글설정  // 입력위치 무관 -->
</head>
<body>
	<div align="center">
		<div id="topmenu"><%@ include file="topMenu.jsp"%></div>

		<div>
			<h3>개인정보</h3>
		</div>
		<div>
			<table border="1">
				<tr>
					<th align="center" width="100">이름</th>
					<td width="200"><%=request.getParameter("name")%></td>
				</tr>
				<tr>
					<th align="center" width="100">나이</th>
					<td width="200"><%=request.getParameter("age")%></td>
				</tr>
				<tr>
					<th align="center" width="100">취미</th>
					<!-- 복수의 데이터가져올 때는 getParameterValues // 표현식 바로 사용x-->
					<%
						String hobbys[] = request.getParameterValues("hobbys");
					%>
					<td width="200"><%=Arrays.toString(hobbys)%></td>
					<!-- Arrays.toString() 배열출력 메소드 -->
				</tr>
				<tr>
					<th align="center" width="100">지역</th>
					<td width="200"><%=request.getParameter("city")%></td>
				</tr>

			</table>
		</div>
		<div id="footer"><%@ include file="footer.jsp"%></div>
	</div>
</body>
</html>