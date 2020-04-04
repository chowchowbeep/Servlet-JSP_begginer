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
			<form id="frm" name="frm" action="../b.do" method="get"> 
				<table border="1">
					<tr>
						<th width="100" align="center">이름</th>
						<td><input type="text" id="id" name="id" size="20"></td>
					</tr>
					<tr>
						<th width="100" align="center">비밀번호</th>
						<td><input type="password" id="pw" name="pw" size="20"></td>
					</tr>
					
				</table><br>
				<input type="submit" value="로그인">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;&nbsp;
				<a href="../index.jsp">홈 가기</a>
				
			</form>
		</div>
	</div>
</body>
</html>