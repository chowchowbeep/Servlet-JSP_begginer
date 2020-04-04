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
			<h1>자유게시판 세부글 읽기</h1>
		</div>
		<div>
			<table border="1" width="1000">
				<tr align="center">
					<th>글번호</th>
					<td>${list[0].id }</td>
					<th>작성자</th>
					<td>${list[0].writer }</td>
					<th>작성일자</th>
					<td>${list[0].wDate }</td>
					<th>조회수</th>
					<td>${list[0].hit }</td>
					<!--  <th>원글번호</th>
					<td>${list[0].group }</td>
					<th>사용자ID</th>
					<td>${list[0].userId }</td>-->
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="8">${list[0].title }</td>
				</tr>

				<tr>
					<th>내용</th>
					<td colspan="8" height="300">${list[0].contents }</td>
				</tr>

			</table>
		</div>

		<div>
			<br />
			<table border="1" width="700">
				<c:forEach var="i" begin="1" end="${length-1 }">
					<tr>
						<th width="80">댓글${i }</th>
						<td colspan="5" height="100">${list[i].contents }</td>
					</tr>
				</c:forEach>
			</table>
		</div>


		<!-- 본인이 쓴 글일때만 수정삭제 가능하도록 -->
		<div>
			<br />
			<c:if test="${id == 'user1' }">
				<button type="button" onclick="location.href='boardEdit.do'">글
					수정</button>
				&nbsp;&nbsp;
				<button type="button" onclick="location.href='boardDelete.do?bid=${list[0].id}'">
				글삭제</button>
				&nbsp;&nbsp;
			</c:if>
			<button type="button" onclick="location.href='boardList.do'">글
				목록</button>
		</div>
	</div>
</body>
</html>