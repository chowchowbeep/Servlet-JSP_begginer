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
		<div id="topmenu"><%@ include file="topMenu.jsp"%></div><!-- 자바이용 인클루드 -->
		<div><h1>개인정보 입력</h1></div>
		<div>
			<form id="frm" name="frm" action="result.jsp" method="post">
				<div id="in_table">
					<table border="1">
						<tr>
							<th align="center" width="100">이름</th>
							<td width="200"><input type="text" name="name" id="name"></td>
						</tr>
						<tr>
							<th align="center" width="100">나이</th>
							<td width="200"><input type="text" name="age" id="age"></td>
						</tr>
						<tr>
							<th align="center" width="100">취미</th>
							<td width="200"><input type="checkbox" name="hobbys"
								id="hobbys" value="독서">독서&nbsp; <input type="checkbox"
								name="hobbys" id="hobbys" value="바둑">바둑&nbsp; <input
								type="checkbox" name="hobbys" id="hobbys" value="낚시">낚시&nbsp;
							</td>
						</tr>
						<tr>
							<th align="center" width="100">지역</th>
							<td width="200"><select name="city" id="city">
									<option value="대 구" selected="selected">대 구</option>
									<option value="서 울">서 울</option>
									<option value="부 산">부 산</option>
									<option value="대 전">대 전</option>
							</select></td>
						</tr>

					</table>
				</div>
				<div>
					<br /> <input type="submit" value="전송">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="취소">
				</div>
			</form>
			
		</div>
		<div id="footer"><%@ include file="footer.jsp"%></div>
	</div>
</body>
</html>