<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	//입력사항 체크 방법1_ 2는 join.jsp참조
	function formCheck() {
		if (frm.id.value == "") {
			alert("아이디를 입력하세요");
			frm.id.focus();
			return false;
		}
		if (frm.pw.value == "") {
			alert("패스워드를 입력하세요");
			frm.pw.focus();
			return false;
		}
		retrun
		true;
	}
	//form onsubmit javascript 이용
</script>
<body>
	<div align="center">
		<c:if test="${id == null}"><!-- 로그인 중이 아닐 때만 아래 로그인화면 표시 -->
			<div>
				<h1>로 그 인</h1>
			</div>
			<div>
				<form id="frm" name="frm" action="loginOk.jsp" method="post"
					onsubmit="return formCheck()">
					<table border="1">
						<tr>
							<th>아이디</th>
							<td><input type="text" id="id" name="id" size="50"></td>
						</tr>
						<tr>
							<th>패스워드</th>
							<td><input type="password" id="pw" name="pw" size="50"></td>
						</tr>
					</table>
					<br /> <input type="submit" value="로그인"> &nbsp; <input
						type="reset" value="취소"> &nbsp;
					<button type="button" onclick="location.href='join.jsp'">회원가입</button>
				</form>
				<br /> <br />
			</div>
		</c:if>
		<c:if test="${id != null}">
			<h1>${id }는이미 로그인되어 있습니다.</h1>
			<a href="main.jsp">메인으로 돌아가기</a>
		</c:if>
		<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>