<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
	
	Connection conn; //DMBS와 연결을 유지하는 객체
	PreparedStatement pstmt; //sql문을 실행시킬 수 있는 객체
	ResultSet rs; //레코드 셋을 담을 수 있는 객체
	
	
	//커넥션을 일으키기 위해 필요한 변수
	String driver = "oracle.jdbc.driver.OracleDriver"; //oracle에서 제공하는 드라이버
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //실제 접속하려는 DB주소
	String user="micol";
	String password="1234"; 
	
	%>
	
	<% 
		try {
			Class.forName(driver); //드라이버 로드_드라이버가 어플리케이션에 탑재
			conn = DriverManager.getConnection(url, user, password); 
			// 커넥션 발생.연결을 conn객체가 가지고 유지함// 연결시 url, user, password실어보냄
		} catch (ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
	
		String sql = "select * from student";
		try {
			pstmt = conn.prepareStatement(sql); //커넥션객체를 통해 pstmt객체 생성하면서 sql문 실어보냄
			rs = pstmt.executeQuery(); //pstmt에 저장된 sql실행하며, 결과(레코드 셋)를 rs에 저장 //DBMS에 명령
			while(rs.next()){ //테이블 운행 메소드 next()의 리턴값은 읽을 행이 존재하느냐에 따라 t/f
				String id = rs.getString("studentid"); //컬럼명대신 컬럼인덱스를 입력해도 됨
				String name = rs.getString("studentname");
				String addr = rs.getString("studentaddr");
				String tel = rs.getString("studenttel");
				int age = rs.getInt("studentage");
				out.println(id+":");
				out.println(name+":");
				out.println(addr+":");
				out.println(tel+":");
				out.println(age+"<br/>"); 
			}
 		} catch (SQLException e){
 			e.printStackTrace();
 		} finally { //open역순으로 close_ 연결을 끊어서 어플리케이션의 부하를 줄여줌
 			rs.close();
 			pstmt.close();
 			conn.close();
 		}
	%>
	
</body>
</html>