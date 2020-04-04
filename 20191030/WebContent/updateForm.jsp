<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "dao.EmpDao" %>
<%@ page import = "dto.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	String empId = request.getParameter("empId"); //empList.html에서 페이지 요청받아 updateForm.jsp?empId=" + elem[i].employeeId에서 empId값 가져옴
	EmpDao dao = new EmpDao();
	Employee emp = dao.getEmp(empId);
    %>
    
    <form id="frm" action="EmpServlet">  <!-- form제출시 EmpServelt 페이지 요청 -->
	<input type="hidden" name="action" value="update">
	<input type="hidden" name="employee_id" value="<%=emp.getEmployeeId()%>"> 
		<table border="1">
			<tr>
				<th>First Name</th>
				<td><input readonly type="text" id="fName" name="fName" value="<%=emp.getFirstName()%>"></td>
			</tr>
			<tr>
				<th>Last Name</th>
				<td><input readonly type="text" id="lName" name="lName" value="<%=emp.getLastName()%>"></td>
			</tr>
			<tr>
				<th>Email</th>
				<td><input readonly type="text" id="email" name="email" value="<%=emp.getEmail()%>"></td>
			</tr>
			<tr>
				<th>Phone Number</th>
				<td><input type="text" id="phoneNumber" name="phoneNumber" value="<%=emp.getPhoneNumber()%>"></td>
			</tr>
			
			<tr>
				<th>Hire Date</th>
				<td><input readonly type="date" id="hireDate" name="hireDate" value="<%=emp.getHireDate()%>"></td>
			</tr>
			<tr>
				<th>Job Id</th>
				<td><input type="text" id="jobId" name="jobId" value="<%=emp.getJobId()%>"></td>
			</tr>
			<tr>
				<th>Salary</th>
				<td><input type="text" id="salary" name="salary" value="<%=emp.getSalary()%>"></td>

			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="사원정보 수정">&nbsp;&nbsp;&nbsp; 
					<input type="reset"
					value="다시입력"></td>
			<tr>
		</table>
	</form>
</body>
</html>