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
	<div align="center">
		<div><jsp:include page="topmenu.jsp"></jsp:include></div>
		<div>
			<h1>자유게시판 목록</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="80">글번호</th>
					<th width="100">작성자</th>
					<th width="200">제목</th>
					<th width="100">작성일자</th>
				</tr>
				<c:forEach var="dto" items="${list }">
					<tr align="center">
						<td>${dto.id }</td>
						<td>${dto.writer }</td>
						<td><a href="boardRead.do?bid=${dto.id }">${dto.title }</a></td>
						<td>${dto.wDate }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<c:if test="${id != null }">
				<br />
				<button type="button" onclick="location.href='boardWrite.do'">글쓰기</button>
				&nbsp;&nbsp;
			</c:if>
		</div>
	</div>
</body>
</html>