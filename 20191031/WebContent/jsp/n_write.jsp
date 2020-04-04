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
		<div id="topmenu"><%@ include file="topMenu.jsp"%></div>
		<div>
			<h1>공지사항 입력</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="writeSave.jsp" method="post">
				<div>
					<table border="1">
						<tr>
							<th align="center" width="100">작성자 : </th>
							<td><input type="text" id="name" name="name" size="100"></td>
						</tr>
						<tr>
							<th align="center" width="100">작성일자 : </th>
							<td><input type="date" id="wdate" name="wdate" size="50"></td>
						</tr>
						<tr>
							<th align="center" width="100">제목 : </th>
							<td><input type="text" id="subject" name="subject"
								size="100"></td>
						</tr>
						<tr>
							<th align="center" width="100">내용 : </th>
							<td><textarea id="contents" name="contents" 
									cols="100" rows="20"></textarea></td>
						</tr>

					</table>
				</div>
				<div>
					<br>
					<button type="submit">저장</button> <!-- form입력값을 보내기 위해서 onclick대신 상단 action -->
					&nbsp;&nbsp;
					<button type="button" onclick="location.href='notice.jsp'">목록보기</button>
					
				</div>
			</form>
		</div>
		<div id="footer"><%@ include file="footer.jsp"%></div>
	</div>
</body>
</html>