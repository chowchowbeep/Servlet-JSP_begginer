package co.micol.dto;

public class Student {
	private String name;
	private String studentId;
	private String addr;
	private int age;
	private String tel;
	
	public Student() {
	}

	public String getName() {
		return name;
	}

	public String getStudentId() {
		return studentId;
	}

	public String getAddr() {
		return addr;
	}

	public int getAge() {
		return age;
	}

	public String getTel() {
		return tel;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
