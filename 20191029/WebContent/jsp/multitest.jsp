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
		<div>
			<!--  <form id="frm" name="frm" action="../ArrayTest" method="post">-->
			<form id="frm" name="frm" action="../Array.do" method="post">
				이름: <input type="text" id="name" name="name" size="10"><br />
				나이: <input type="text" id="age" name="age" size="10"><br />
				취미: <input type="checkbox" id="hobby" name="hobby" value="탁구">탁구 &nbsp;&nbsp;
				<input type="checkbox" id="hobby" name="hobby" value="농구">농구 &nbsp;&nbsp;
				<input type="checkbox" id="hobby" name="hobby" value="바둑">바둑 &nbsp;&nbsp;
				<input type="checkbox" id="hobby" name="hobby" value="요리">요리 &nbsp;&nbsp;
				<input type="checkbox" id="hobby" name="hobby" value="청소">청소 &nbsp;&nbsp;
				성별: <input type="radio" id="gender" name="gender" value="여자" checked>여자 &nbsp;&nbsp;
				<input type="radio" id="gender" name="gender" value="남자">남자 &nbsp;&nbsp; <br>
				<input type="submit" value="전송">&nbsp;&nbsp;
				<a href="../index.jsp">홈으로</a>
			</form>
		</div>
	</div>
</body>
</html>