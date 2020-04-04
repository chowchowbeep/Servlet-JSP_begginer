<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/menu.css">
</head>
<body>

	<div align="center">
		<div id="menubar">
			<ul>
				<li><a href="main.jsp">홈</a></li>
				<li><a href="request.jsp">요청객체</a></li>
				<li><a href="notice.jsp">공지사항</a></li>
				
				<li><a href="student.jsp">학생관리</a></li>
				<!-- jsp_bean태그, EL표현식 이용한 페이지-->
				
				<li><a href="student2.jsp">학생관리2</a></li>
				<!-- 자바 -->
				
				<li><a href="dbconnect.jsp">DB연결</a></li>
				<li><a href="#">사전</a></li>

				<!-- jstl c:choose(제어문_switch문)태그 사용 
				id가 비어있으면 회원가입 표시, 아니면 회원정보조회표시_ c:set으로  id변수 설정도 가능 -->
				<c:choose>
					<c:when test="${ empty id }">
						<li><a href="#">회원가입</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="#">회원정보조회</a></li>
					</c:otherwise>
				</c:choose>

				
				<c:if test="${id == 'micol'}">
					<!-- test조건 만족시 아래태그 내용 표시 -->
					<li><a href="#">관리자모드</a></li>
				</c:if>

			</ul>
		</div>
	</div>
</body>
</html>