<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h1>게시글 작성</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="boardInsert.do" method="post">
				<div>
					<table border="1" >
						<tr>
							<th>작성자</th>
							<td><input type="text" id="writer" name="writer" size="70"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" id="title" name="title" size="70"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea id="contents" name="contents" cols="100" rows="20"></textarea></td>
						</tr>
					</table>

				</div>
				<div>
					<br /> <input type="submit" value="제출"> &nbsp;&nbsp; <input
						type="reset" value="다시작성">
				</div>
			</form>
		</div>
	</div>
</body>
</html>