<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.EmpDao"%>
<%@ page import="dto.Employee"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src = "https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script>
	$(function(){
		$("#example").DataTable(); //?
	})
</script>

</head>
<body>
	<a href="insertEmp.jsp">입력화면</a>
	<table id="example">
		<thead>
			<tr>
				<td>firstName</td>
				<td>lastName</td>
				<td>email</td>
				<td>salary</td>
			</tr>
		</thead>
		<tbody><!-- DB서버와 연결  -->
			<% 
				EmpDao dao = new EmpDao();
				List<Employee> list = dao.getEmpList();
				for (Employee emp : list) {
			%>

			<tr>
				<td><%=emp.getFirstName() %></td>
				<td><%=emp.getLastName() %></td>
				<td><%=emp.getEmail() %></td>
				<td><%=emp.getSalary() %></td>
			</tr> 
			
			<%
				}
			%>
		</tbody>
		<tfoot>
			<tr>
				<td>firstName</td>
				<td>lastName</td>
				<td>email</td>
				<td>salary</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>