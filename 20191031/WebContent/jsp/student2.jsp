<%@page import="co.micol.dto.Student"%>
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

		<div><jsp:include page="topMenu.jsp"></jsp:include></div>
		<div>
			<%
				Student student = new Student();
				student.setName("김초롱");
				student.setStudentId("20190000");
				student.setAddr("대구");
				student.setAge(29);
				student.setTel("010-0000-0000");
			%>
		</div>
		<div>
			이름: <%=student.getName()%> <br />
			학번: <%=student.getStudentId()%> <br />
			주소: <%=student.getAddr()%> <br />
			나이: <%=student.getAge()%> <br />
			전화번호: <%=student.getTel()%> <br />
		</div>
		<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>