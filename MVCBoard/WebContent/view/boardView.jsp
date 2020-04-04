<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function formSubmit(n) {
		if (n == 1) {
			frm.action = "BoardEdit.do";
		} else if (n == 2) {
			frm.action = "boardDelete.do";
		} else if (n == 3) {
			frm.action = "boardReply.do";
		} else if (n == 4) {
			frm.action = "boardList.do";
		}
		frm.submit();
	}
</script>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 세부내용</h1>
		</div>
		<div>
			<table border="1" width="700">

				<tr>
					<th width="80">작성자</th>
					<!-- boardView.java에서
					request.setAttribute("list", list); 
					""내의 이름이 list , 실제 dto객체의 필드명 -->
					<td align="center">${list[0].name }</td>
					<th width="80">작성일자</th>
					<td align="center">${list[0].wDate }</td>
					<th width="80">조회수</th>
					<td align="center">${list[0].hit }</td>

				</tr>
				<tr>
					<th>제목</th>
					<td colspan="5">${list[0].title }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5" height="300">${list[0].contents }</td>
				</tr>
			</table>
		</div>
		<div>
			<form id="frm" name="frm" action="" method="post">
				<input type="hidden" id="id" name="id" value="${list[0].id }">
			</form>
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
		<div>
			<br />
			<!-- 액션밸류는 onclick 메소드 호출시 지정 -->
			<button type="button" onclick="formSubmit(1)">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="formSubmit(2)">삭제</button>
			&nbsp;&nbsp;
			<button type="button" onclick="formSubmit(3)">댓글작성</button>
			&nbsp;&nbsp;
			<button type="button" onclick="formSubmit(4)">목록</button>
		</div>
	</div>
</body>
</html>