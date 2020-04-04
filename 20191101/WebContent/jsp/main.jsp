<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<!-- 세션이 존재할 경우 -->
		<c:if test="${id !=null }"> 
		${id }님 환영합니다.<br />
			<c:if test="${grant == 'U'}">
			일반유저입니다.</c:if>
			<c:if test="${grant == 'S' }">
			관리자입니다.<br />
				<!-- 관리자 로그인시 회원목록보기 가능하도록 -->
				<button type="button" onclick="location.href='mlist.jsp'">회원목록보기</button>
			</c:if><br />
			
			
			<button type="button" onclick="location.href='modify.jsp'">회원정보수정</button>
		&nbsp;&nbsp;
		<button type="button" onclick="location.href='logOut.jsp'">로그아웃</button>
		</c:if>

		<!-- 로그인 중 아닐 때만 로그인 버튼이 표시되도록 -->
		<c:if test="${id ==null }">
			<button type="button" onclick="location.href='login.jsp'">로그인</button>
		</c:if>

	</div>
</body>
</html>