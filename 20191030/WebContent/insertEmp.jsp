<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body> <!-- form 제출시 EmpServlet페이지 요청하고, name의 value값을 파라미터로 넘겨줌 -->
	<form id="frm" action="EmpServlet"> 
		<input type="hidden" name="action" value="insert">
		<table border="1" >
			<tr>
				<th>First Name</th>
				<td><input type="text" id="fName" name="fName"></td>
			</tr>
			<tr>
				<th>Last Name</th>
				<td><input type="text" id="lName" name="lName"></td>
			</tr>
			<tr>
				<th>Email</th>
				<td><input type="text" id="email" name="email"></td>
			</tr>
			<tr>
				<th>Phone Number</th>
				<td><input type="text" id="phoneNumber" name="phoneNumber"></td>
			</tr>
			<tr>
				<th>Hire Date</th>
				<td><input type="date" id="hireDate" name="hireDate"></td>
			</tr>
			<tr>
				<th>Job Id</th>
				<td><input type="text" id="jobId" name="jobId"></td>
			</tr>
			<tr>
				<th>Salary</th>
				<td><input type="text" id="salary" name="salary"></td>

			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="사원등록">&nbsp;&nbsp;&nbsp; <input type="reset"
					value="다시입력"></td>
			<tr>
		</table>
	</form>

</body>
</html>