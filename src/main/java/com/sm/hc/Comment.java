package com.sm.hc;

import java.util.Date;

public class Comment {
	
	private String comment_num;
	private String board_num;
	private String user_id;
	private String comment_txt;
	private Date comment_date;
	
	public Comment() {
		// TODO Auto-generated constructor stub
	}

	public Comment(String comment_num, String board_num, String user_id, String comment_txt, Date comment_date) {
		super();
		this.comment_num = comment_num;
		this.board_num = board_num;
		this.user_id = user_id;
		this.comment_txt = comment_txt;
		this.comment_date = comment_date;
	}

	public String getComment_num() {
		return comment_num;
	}

	public void setComment_num(String comment_num) {
		this.comment_num = comment_num;
	}

	public String getBoard_num() {
		return board_num;
	}

	public void setBoard_num(String board_num) {
		this.board_num = board_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getComment_txt() {
		return comment_txt;
	}

	public void setComment_txt(String comment_txt) {
		this.comment_txt = comment_txt;
	}

	public Date getComment_date() {
		return comment_date;
	}

	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}
	
	

}
