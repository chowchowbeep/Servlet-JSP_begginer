<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<jsp:include page="topmenu.jsp"></jsp:include>
		</div>
		<div>
			<br />
			<c:choose>
				<c:when test="${id != null}"> <!-- 로그인되어 있을 경우 -->
					<h1>${id }님은이미등록된회원입니다.</h1>
				</c:when>
				<c:otherwise> <!-- 로그인 안된 상태에서 회원등록 가능하도록 -->
					<h1>회원등록화면</h1>
					<div>
						<form id="frm" name="frm" action="memberInsertOk.do" method="post"
							onsubmit="return memberFormCheck()">
							<div>
								<table border="1">
									<tr>
										<th width="130">*ID</th>
										<td><input type="text" id="id" name="id" size="50">&nbsp;&nbsp;
											<button type="button" id="idch" name="idch"
												onclick="idCheck()" value="unCheck">중복체크</button></td>
									</tr>
									<tr>
										<th>*이름</th>
										<td><input type="text" id="name" name="name" size="50">&nbsp;&nbsp;</td>
									</tr>
									<tr>
										<th>*비밀번호</th>
										<td><input type="password" id="pw" name="pw" size="50">&nbsp;&nbsp;</td>
									</tr>
									<tr>
										<th>*비밀번호 확인</th>
										<td><input type="password" id="pwChk" name="pwChk"
											size="50">&nbsp;&nbsp;</td>
									</tr>
									<tr>
										<th>주소</th>
										<td><input type="text" id="addr" name="addr" size="50">&nbsp;&nbsp;</td>
									</tr>
									<tr>
										<th>*전화번호</th>
										<td><input type="tel" id="tel" name="tel" size="50">&nbsp;&nbsp;</td>
									</tr>
								</table>
							</div>
							<div>
								<br /> <input type="submit" value="가입">&nbsp;&nbsp; <input
									type="reset" value="취소">&nbsp;&nbsp;
							</div>
						</form>
					</div>
				</c:otherwise>
			</c:choose>
		</div>

	</div>
</body>
</html>