package com.test.web.board.bean;

public class ContentBean {

	private Integer no;
	private String user;
	private String title;
	private String date;
	
	public ContentBean() {
		
	}
	
	public ContentBean(Integer no, String user, 
			          String title, String date) {
		this.no = no;
		this.user = user;
		this.title = title;
		this.date = date;		
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
