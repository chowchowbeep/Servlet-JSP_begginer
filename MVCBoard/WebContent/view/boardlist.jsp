<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function transdata(n) {
		frm.id.value = n;
		frm.submit();
	} //submit시켜 dto.id값 넘기기
</script>
<body>
	<div align="center">
		<div>
			<h1>게시판 목록</h1>
		</div>
		<div>
			<form id="frm" name ="frm" action="boardView.do" method="post"> <!-- 이동하여 값 넘길 곳 -->
							<input type="hidden" name="id" value="${dto.id }"> <!-- 히든변수로 넘길 id값 -->
				<table border="1">
					<tr>
						<th width="50">순 번</th>
						<th width="70">작성자</th>
						<th width="200">제 목</th>
						<th width="100">작성일자</th>
						<th width="50">조회수</th>
					</tr>

					<c:forEach var="dto" items="${list }">
						<tr onmouseover="this.style.backgroundColor='yellow'"
							onmouseout="this.style.backgroundColor=''"
							onclick="transdata(${dto.group })"> <!-- dto.group를 넘길 인자로 주도록 -->
							
							
							<!-- onclick="location.href='boardView.do?id='+${dto.id }"> -->
							<!-- boardView.do에 get방식으로 id값 넘겨주기 -->
							
							<td align="center">${dto.id }</td>
							<td align="center">${dto.name }</td>
							<td align="center">${dto.title }</td>
							<td align="center">${dto.wDate }</td>
							<td align="center">${dto.hit }</td>
						</tr>
					</c:forEach>
				</table>
			</form>
		</div>
		<div>
			<br />
			<button type="button" onclick="location.href='BoardWrite.do'">글쓰기</button>
			&nbsp;&nbsp;
			<button type="button" onclick="location.href='index.do'">홈가기</button>
			<!-- .jsp, .do로 통일되지 않는 문제 -> .do사용하여 모든 페이지가 controller를 거치도록 하기. -->

		</div>
	</div>
</body>
</html>