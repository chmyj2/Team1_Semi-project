package com.jw.DbUtil;

public class CartBean {
	private String number;
	private String productNum;
	private int productQuantity;
	private String userId;
	private String inputDate;
	public CartBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartBean(String number, String productNum, int productQuantity, String userId, String inputDate) {
		super();
		this.number = number;
		this.productNum = productNum;
		this.productQuantity = productQuantity;
		this.userId = userId;
		this.inputDate = inputDate;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getProductNum() {
		return productNum;
	}
	public void setProductNum(String productNum) {
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
