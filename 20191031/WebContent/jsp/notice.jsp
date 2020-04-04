<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl_jsp standard tag library의 Core Library 사용-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div id="topmenu"><%@ include file="topMenu.jsp"%></div>
		<div>
			<h1>공 지 사 항</h1>
		</div>
		<div>
			<table border="1">
				<tr onclick="location.href='view.jsp'">
					<th align="center" width="70">순번</th>
					<th align="center" width="150">제목</th>
					<th align="center" width="150">작성자</th>
					<th align="center" width="150">작성일자</th>
					<th align="center" width="70">조회수</th>
				</tr>
				<tr onclick="location.href='view.jsp'">
					<td align="center" width="70">1</td>
					<td align="center" width="150">&nbsp;&nbsp;&nbsp;시월마지막날</td>
					<td align="center" width="150">초로롱</td>
					<td align="center" width="150">2019-10-31</td>
					<td align="center" width="70">1</td>
				</tr>
				<tr onclick="location.href='view.jsp'">
					<td align="center" width="70">2</td>
					<td align="center" width="150">&nbsp;&nbsp;&nbsp;집에갈래</td>
					<td align="center" width="150">초로롱</td>
					<td align="center" width="150">2019-10-31</td>
					<td align="center" width="70">1</td>
				</tr>
				<!-- 레코드 끝 -->
			</table>
		</div>

		<div><!-- c:if 제어문태그 (jstl) // ${} (ExpressionLanguage)  사용 -->
			<br>
			<c:if test="${ grant == 'S' }">  
				<button type="button" onclick="location.href='n_write.jsp'">글쓰기</button>
			</c:if>
		</div>
		<div id="footer"><%@include file="footer.jsp"%></div>
	</div>
</body>
</html>