<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 수정</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="boardEditOk.do" method="post">
			<input type="hidden" id="id" name="id" value="${dto.id }" >
				<table border="1">
					<tr>
						<th width="80">작성자</th>
						<td align="center">${dto.name }</td>
						<th width="80">작성일자</th>
						<td align="center">${dto.wDate }</td>
						<th width="80">조회수</th>
						<td align="center">${dto.hit }</td>
					</tr>
					<tr>
						<th width="80">제목</th>
						<td colspan="5"><input type="text" id="title" name="title"
							style="width: 98%" value="${dto.title }"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="5" height="100">
						<textarea id="contents"
								name="contents" cols="100" rows="30">${dto.contents }</textarea>
						</td>
					</tr>
				</table>
				<br />
				<input type="submit" value="저장">&nbsp;&nbsp; 
				<input type="reset" value="취소"> &nbsp;&nbsp;
				<button type="button" onclick="location.href='boardList.do'">목록</button>
			</form>
		</div>
	</div>
</body>
</html>