<%@page import="co.micol.dao.MemberDao"%>
<%@page import="co.micol.dto.MemberDto"%>
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
		String id = (String) session.getAttribute("id");
		MemberDto dto = new MemberDto();
		MemberDao dao = new MemberDao();
		dto = dao.select(id);
	%>
	<div align="center">
		<div>
			<h1>회원 개인정보</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="modifyOk.jsp" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="70">아이디</th>
							<td width="150"><input type="text" id="id" name="id"
								value="<%=dto.getId()%>" size="30" readonly></td>
						</tr>
						<tr>
							<th width="70">가입일자</th>
							<td><input type="text" id="entDate" name="entDate"
								value="<%=dto.getEnterDate()%>" size="30" readonly></td>
						</tr>
						<tr>
							<th width="70">이름</th>
							<td><input type="text" id="name" name="name"
								value="<%=dto.getName()%>" size="30"></td>
						</tr>

						<tr>
							<th width="70">주소</th>
							<td><input type="text" id="addr" name="addr"
								value="<%=dto.getAddr()%>" size="80"></td>
						</tr>
					</table>
				</div>
				<div>
					<br />
					<button type="submit" value="수정">정보수정</button>
					&nbsp;&nbsp;
					<button type="button" onclick="location.href='main.jsp'">
						돌아가기</button>

				</div>

			</form>
		</div>
	</div>
</body>
</html>