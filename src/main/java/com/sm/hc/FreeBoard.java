package com.sm.hc;

import java.sql.Date;

public class FreeBoard {

	private String board_num;
	private String board_title;
	private String board_txt;
	private String board_img;
	private Date board_date;
	private String user_id;

	public FreeBoard() {
		// TODO Auto-generated constructor stub
	}

	public FreeBoard(String board_num, String board_title, String board_txt, String board_img, Date board_date,
			String user_id) {
		super();
		this.board_num = board_num;
		this.board_title = board_title;
		this.board_txt = board_txt;
		this.board_img = board_img;
		this.board_date = board_date;
		this.user_id = user_id;
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

	public String getBoard_txt() {
		return board_txt;
	}

	public void setBoard_txt(String board_txt) {
		this.board_txt = board_txt;
	}

	public String getBoard_img() {
		return board_img;
	}

	public void setBoard_img(String board_img) {
		this.board_img = board_img;
	}

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
	
	
}
