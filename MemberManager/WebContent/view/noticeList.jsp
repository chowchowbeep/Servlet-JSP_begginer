<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<jsp:include page="topmenu.jsp"></jsp:include>
		<div>
			<br />
			<h1>공지사항</h1>
		</div>
		<c:choose>
			<c:when test="${empty list }">
				<br />
				<h2>등록된 공지사항이 없습니다.</h2>
			</c:when>
			<c:otherwise>
				<div>
					<table width="1000" border="1">
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>내용</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
						<c:forEach var="dto" items="${list }">
							<tr onclick="location.href='readNotice.do'"
							onmouseover="this.style.backgroundColor='yellow'"
							onmouseout="this.style.backgroundColor=''">
								<td align="center">${dto.id }</td>
								<td align="center">${dto.title }</td>
								<td align="center">${dto.contents }</td>
								<td align="center">${dto.date }</td>
								<td align="center">${dto.hit }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>