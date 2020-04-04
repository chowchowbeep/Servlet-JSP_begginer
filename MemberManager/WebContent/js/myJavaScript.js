function loginFormCheck() {
	if (frm.id.value == "") {
		alert("아이디를 입력하세요.");
		frm.id.focus();
		return false;
	}
	if (frm.pw.value == "") {
		alert("패스워드를 입력하세요.");
		frm.pw.focus();
		return false;
	}
	return true;
}

function memberFormCheck() {
	if (frm.id.value == "") {
		alert("사용할 아이디를 입력하세요");
		frm.id.focus();
		return false;
	}
	if (frm.idch.value == "unCheck") {
		alert("아이디 중복체크를 확인해 주세요");
		return false;
	}
	
	if (frm.name.value == "") {
		alert("이름을 입력하세요");
		frm.name.focus();
		return false;
	}
	if (frm.tel.value == "") {
		alert("전화번호를 입력하세요");
		frm.tel.focus();
		return false;
	}
	
	
	
	
	if (frm.pw.value == "") {
		alert("패스워드를 입력하세요");
		frm.pw.focus();
		return false;
	}
	if (frm.pwChk.value == "") {
		alert("패스워드확인값을 입력하세요");
		frm.pwChk.focus();
		return false;
	}
	if (frm.pw.value != frm.pwChk.value) {
		alert("패스워드확인값이 일치하지 않습니다");
		frm.pwChk.focus();
		return false;
	}
	return true;
}

function idCheck() {
	var id = frm.id.value;
	if(id ==""){
		alert("아이디값을 입력 후 확인하세요");
		frm.id.focus();
	} else {
		window.open("idCheck.do?id="+id,"id 중복체크","width=700, height=400, top=50, left=50");
	}
}
