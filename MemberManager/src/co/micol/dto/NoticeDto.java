package co.micol.dto;

import java.sql.Date;

public class NoticeDto {
	private int id;
	private String title;
	private String contents;
	private Date date;
	private int hit;
	
	public NoticeDto() {
	}

	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getContents() {
		return contents;
	}

	public Date getDate() {
		return date;
	}

	public int getHit() {
		return hit;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
	
	
}
