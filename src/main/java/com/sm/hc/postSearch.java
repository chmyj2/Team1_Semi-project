package com.sm.hc;

import java.util.Date;

public class postSearch {
	
	private String board_num;
	private String board_title;
	private String user_id;
	private Date board_date;

	public postSearch() {
		// TODO Auto-generated constructor stub
	}

	public postSearch(String board_num, String board_title, String user_id, Date board_date) {
		super();
		this.board_num = board_num;
		this.board_title = board_title;
		this.user_id = user_id;
		this.board_date = board_date;
	}

	public String getBoard_num() {
		return board_num;
	}

	public void setBoard_num(String board_num) {
		this.board_num = board_num;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	
	
	
	
}
