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
			<h1>회원목록</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="100">id</th>
					<th width="100">이름</th>
					<th width="100">가입일자</th>
					<th width="300">주소</th>
					<th width="150">전화</th>
				</tr>
				<c:forEach var="dto" items="${list }">
					<tr>
						<td align="center">${dto.id}</td>
						<td align="center">${dto.name }</td>
						<td align="center">${dto.eDate }</td>
						<td align="center">${dto.addr }</td>
						<td align="center">${dto.tel }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
		<br />
			<button type="button" onclick="location.href='index.do'">닫기</button>
		</div>
	</div>
</body>
</html>