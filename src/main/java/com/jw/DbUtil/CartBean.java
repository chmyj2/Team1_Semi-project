package com.jw.DbUtil;

public class CartBean {
	private int number;
	private int productNum;
	private int productQuantity;
	private String userId;
	private String inputDate;
	public CartBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartBean(int number, int productNum, int productQuantity, String userId, String inputDate) {
		super();
		this.number = number;
		this.productNum = productNum;
		this.productQuantity = productQuantity;
		this.userId = userId;
		this.inputDate = inputDate;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getInputDate() {
		return inputDate;
	}
	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
	}	
}
