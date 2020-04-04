<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script> //필수입력사항 체크 방법2_ 1는 login.jsp참조
	function formCheck() {
		if (frm.id.value == "") {
			alert("아이디를 입력하세요");
			frm.id.focus();
			return false;
		}
		
		if(frm.idChk.value =="unCheck"){ 
			alert("아이디 중복체크를 하세요");
				return false;
		}
		if (frm.pw.value  == "") {
			alert("패스워드를 입력하세요");
			frm.pw.focus();
			return false;
		}
		if (frm.name.value  == "") {
			alert("이름을 입력하세요");
			frm.name.focus();
			return false;
		}
		frm.submit(); 
		//제출버튼_type이 submit으로 지정되어 있지 않음 //클릭시 호출됨
	}
	function idCheck(){
		window.open("idcheck.jsp?cid="+id.value,"IdCheck","width=800", "height=700");
		
	}
</script>

</head>
<body>
	<div align="center">
		<div>
			<h1>회원가입</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="joinOk.jsp" method="post" >
				<div>
					<table border="1">
						<tr>
							<th width="100">*아 이 디</th>
							<td><input type="text" id="id" name="id" size="30">&nbsp;
							<!-- 아이디 중복체크  회원가입버튼을 눌렀을 때 반드시 행하도록 value를 unChecked로 해두었다가 중복체크 후 checked로-->
								<button type="button" name="idChk" onclick="idCheck()" value="unCheck">아이디 중복체크
								</button>
							</td>
						</tr>
						<tr>
							<th width="100">*패스워드</th>
							<td><input type="password" id="pw" name="pw" size="30"></td>
						</tr>
						<tr>
							<th width="100">*이&nbsp;&nbsp;&nbsp;름</th>
							<td><input type="text" id="name" name="name" size="30"></td>
						</tr>
						<tr>
							<th width="100">주&nbsp;&nbsp;&nbsp;소</th>
							<td><input type="text" id="addr" name="addr" size="70"></td>
						</tr>
					</table>
				</div>
				<div>
					<br />
					<button type="button" onclick="formCheck()">회원가입</button>
					&nbsp;&nbsp;
					<button type="reset">취소</button>
					&nbsp;&nbsp;
					<button type="button" onclick="location.href='login.jsp'">로그인</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>