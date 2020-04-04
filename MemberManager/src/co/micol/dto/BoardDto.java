package co.micol.dto;

import java.sql.Date;

public class BoardDto {
	private int id;
	private String writer;
	private String title;
	private String contents;
	private Date wDate;
	private int hit;
	private int group;
	private int step;
	private int indent;
	private String userId;
	
	public BoardDto() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public String getWriter() {
		return writer;
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

	public void setWriter(String writer) {
		this.writer = writer;
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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	


}
