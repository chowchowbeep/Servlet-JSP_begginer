<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	//필수입력사항 체크
	function formCheck() {
		if (frm.name.value == "") {
			alert("작성자를 입력하세요")
			frm.name.focus();
			return false;
		}
		if (frm.title.value == "") {
			alert("제목을 입력하세요")
			frm.title.focus();
			return false;
		}
		if (frm.contents.value == "") {
			alert("내용을 입력하세요")
			frm.contents.focus();
			return false;
		}
		return true; // form onsubmit="return formCheck()"
	}
</script>

<body>
	<div align="center">
		<div>
			<h1>게시글작성</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="boardWriteOk.do" method="post"
				onsubmit="return formCheck()"> <!-- ???? -->
				<table border="1">
					<tr>
						<th width="80">*작성자</th>
						<td><input type="text" id="name" name="name"
							style="width: 98%"></td>
						<th width="80">작성일자</th>
						<td><input type="date" id="date" name="date" width="100%"
							style="width: 98%"></td>
					</tr>
					<tr>
						<th>*제목</th>
						<td colspan="3"><input type="text" id="title" name="title"
							style="width: 98%"></td>
					</tr>
					<tr>
						<th>*내용</th>
						<td colspan="3"><textarea id="contents" name="contents"
								cols="100" rows="30"></textarea></td>
					</tr>

				</table>
				<br /> <input type="submit" value="등록"> &nbsp;&nbsp; 
				<input type="reset" value="취소"> &nbsp;&nbsp;
				<button type="button" onclick="location.href='boardList.do'">목록보기</button>
			</form>
			<script> //현재 날짜 처리 
				document.getElementById('Date').value = new date()
						.toISOString().substring(0, 10);
			</script>
		</div>
	</div>
</body>
</html>