package co.micol.dto;

import java.sql.Date;

public class MemberDto {
	private String id;
	private String name;
	private String password;
	private char grant;
	private Date eDate;
	private String addr;
	private String tel;
	
	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public char getGrant() {
		return grant;
	}

	public Date geteDate() {
		return eDate;
	}

	public String getAddr() {
		return addr;
	}

	public String getTel() {
		return tel;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setGrant(char grant) {
		this.grant = grant;
	}

	public void seteDate(Date eDate) {
		this.eDate = eDate;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
		
	
}
