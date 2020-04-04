<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function openFormClose(n) {
		if (n == 1) {
			opener.document.frm.idch.value = "checked"
			opener.frm.name.focus();
		} else {
			opener.frm.id.focus();
		}
		window.close();
	}
</script>
</head>
<body>
	<div align="center">
		<c:choose>
			<c:when test="${idcheck == true }">
				<h1>${param.id }는사용 할 수 있는 아이디입니다.</h1>
				<div>
					<br />
					<button type="button" onclick="openFormClose(1)">확인</button>
				</div>
			</c:when>
			<c:otherwise>
				<!--  <h1>${param.id }는이미사용 중인 아이디입니다.</h1>
				request.getParameter("id")와 동일 
				-> request.setAttribute("id", id) 로 임의로 request객체에 값을 싣지 않고
				기존 request객체에 실린 id값을 사용하는 경우 el표현식 ${param.id }으로 값을 출력할 수 있음
				서버가 만든 것parameter // 임의로 객체에 실은 값은 변수 
				-->
				<div>
				<h1>${id }는이미사용 중인 아이디입니다.</h1>
					<br />
					<button type="button" onclick="openFormClose(0)">확인</button>
				</div>
			</c:otherwise>
		</c:choose>
	</div>

</body>
</html>