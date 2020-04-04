<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- 페이지 리다이렉트 방법_단순한 페이지를 제외웹솔루션의 index페이지는 관문역할로, 대부분 redirect됨-->
<!--index.jsp에 접속시 jsp/main.jsp를 실행하도록 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
<!-- 페이지 리디렉션 -->
<script type="text/javascript">
	  	document.location = "jsp/main.jsp"; 
</script> 
</body>
</html>