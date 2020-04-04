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
		
		<div><!-- bean태그 사용-->
			<jsp:useBean id="student" class="co.micol.dto.Student" />
			<!--id 인스턴스이름 // 클래스명 _별도의 클래스임포트 필요 x _ 자바언어로 선언시_student2.jsp_ 임포트 필요-->
			
			<jsp:setProperty property="name" name="student" value="홍길동" />
			<!-- name:인스턴스멤버명 student:인스턴스명 value:필드값 -->
			<jsp:setProperty property="studentId" name="student" value="2019001" />
			<jsp:setProperty property="addr" name="student" value="대구광역시" />
			<jsp:setProperty property="age" name="student" value="20" />
			<jsp:setProperty property="tel" name="student" value="053-222-2222" />
		</div>
		<!-- value값만 빼면 getProperty가능
		<div>
			이름 : <jsp:getProperty property="name" name="student" /> <br />
			학번 : <jsp:getProperty property="studentId" name="student" /> <br />
			주소 : <jsp:getProperty property="addr" name="student" /> <br />
			나이 : <jsp:getProperty property="age" name="student" /> <br />
			전화번호 : <jsp:getProperty property="tel" name="student" /> <br />
		</div>
		 -->
		 
		 
		 <div> <!-- EL표현식_값을 화면에 출력해주는 역할만 수행-->
			이름 : ${student.name }<br />
			학번 : ${student.studentId }<br />
			주소 : ${student.addr }<br />
			나이 : ${student.age }<br />
			전화번호 : ${student.tel }<br />
		</div>
		
		<div>
			<button type="button" onclick="location.href='student2.jsp'">자바코드</button>
		</div>
		
		<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>