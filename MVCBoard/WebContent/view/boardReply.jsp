<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<Script>
	function formSubmit(n) {
		if (n == 1) {
			frm.action = "boardReplyOk.do";
		} else {
			frm.action = "boardView.do";
		}
		frm.submit();
	}
</Script>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 댓글달기</h1>
		</div>
		
		<!-- 답글DB넘기기 위한 dto의 정보 가져가는 부분 -->
		<div>
			<form id="frm" name="frm" action="" method="post">
				<input type="hidden" id="id" name="id" value="${dto.id }"> 
				<input type="hidden" id="group" name="group" value="${dto.group }">
				<input type="hidden" id="step" name="step" value="${dto.step }">
				<input type="hidden" id="indent" name="indent" value="${dto.indent }">
			</form>
		</div>
		
		
		<!-- 기존글 그대로 보여주는 부분 -->
		<div>
			<table border="1" width="700">
				<tr>
					<th width="80">작성자</th>
					<td align="center">${dto.name }</td>
					<th width="80">작성일자</th>
					<td align="center">${dto.wDate }</td>
					<th width="80">조회수</th>
					<td align="center">${dto.hit }</td>

				</tr>
				<tr>
					<th>제목</th>
					<td colspan="5">${dto.title }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5" height="300">${dto.contents }</td>
				</tr>
			</table>
		</div>
		
		
		<!-- 답글 보여주는 부분 -->
		<div>
			<br />
			<table border="1">
				<tr>
					<th>답글</th>
					<td colspan="5"><textarea rows="10" cols="70" id="reply"
							name="reply"></textarea></td>
				</tr>
			</table>
		</div>

		<div>
			<br />
			<button type="button" onclick="formSubmit(1)">저장</button>
			&nbsp;&nbsp;
			<button type="button" onclick="formSubmit(2)">취소</button>

		</div>
	</div>
</body>
</html>