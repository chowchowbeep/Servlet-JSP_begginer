package co.micol.dto;

import java.sql.Date;

public class MemberDto {
	private String id;
	private String name;
	private String password;
	private String grant;
	private Date enterDate; // java.sql.Date로 import해야 편리
	private String addr;

	public MemberDto(String id, String name, String pw, String addr) {
		this.id = id;
		this.name = name;
		this.password = pw;
		this.addr = addr;
	}

	public MemberDto() {

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

	public String getGrant() {
		return grant;
	}

	public Date getEnterDate() {
		return enterDate;
	}

	public String getAddr() {
		return addr;
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

	public void setGrant(String grant) {
		this.grant = grant;
	}

	public void setEnterDate(Date enterDate) {
		this.enterDate = enterDate;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

}
