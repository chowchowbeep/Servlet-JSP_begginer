package co.micol.dto;

import java.sql.Date;

public class BoardDto { 
	//DTO에서는 테이블 컬럼 수만큼 필드 생성해줄 것.(테이블과 1:1매핑)
	//join 관계의 테이블일 경우 join된 모습의 DTO작성해야 함
	private int id;
	private String name;
	private String title;
	private String contents;
	private Date wDate;
	private int hit; //조회수
	private int group; //원글번호
	private int step; //대댓 정도
	private int indent; //몇번째 댓글인지 표시
	
	public BoardDto() {
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getTitle() {
		return title;
	}

	public String getContents() {
		return contents;
	}

	public Date getwDate() {
		return wDate;
	}

	public int getHit() {
		return hit;
	}

	public int getGroup() {
		return group;
	}

	public int getStep() {
		return step;
	}

	public int getIndent() {
		return indent;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public void setwDate(Date wDate) {
		this.wDate = wDate;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public void setGroup(int group) {
		this.group = group;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public void setIndent(int indent) {
		this.indent = indent;
	}
	
	

	
}
