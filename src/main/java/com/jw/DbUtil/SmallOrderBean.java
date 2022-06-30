package com.jw.DbUtil;

public class SmallOrderBean {
	String productNum;
	int quantity;
	String productName;
	String productPrice;
	String thumbnail;
	public SmallOrderBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SmallOrderBean(String productNum, int quantity, String productName, String productPrice, String thumbnail) {
		super();
		this.productNum = productNum;
		this.quantity = quantity;
		this.productName = productName;
		this.productPrice = productPrice;
		this.thumbnail = thumbnail;
	}
	public String getProductNum() {
		return productNum;
	}
	public void setProductNum(String productNum) {
		this.productNum = productNum;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
}