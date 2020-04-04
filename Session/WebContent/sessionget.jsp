<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		
		//세션에 존재하는 값 가져오기1_객체에 넣고 명시적 형변환
		Object obj1 = session.getAttribute("mySessionName"); 
		String mySessionName = (String) obj1;

		//아래와 동일
		Object obj2 = session.getAttribute("myNum");
		int myNum2 = (int) obj2;

		//세션에 존재하는 값 가져오기2_ 바로 변수에 넣으면서 명시적 형변환_주로 사용
		int myNum = (int) session.getAttribute("myNum"); 
		//key가 myNum인 세션의 value를 int나String과 같은 형변환(원래Object타입)하여 변수에 저장

		out.println(session.getId() + "<br />"); //세션 ID출력 //브라우저 종료, 다른 브라우저 이용시 변경됨. //
		out.println(mySessionName + "<br />");
		out.println(myNum + "<br />"+myNum2); //동일결과
	%>

</body>
</html>