package com.jw.DbUtil;

public class OrderBean {
	


	private int num;
	private String userId;
	private int productNum;
	private int productQuantity;
	private String inputDate;
	private String state;
	private String Address;
	private String paymentState;
	private String csState;
	private int ProductPrice;
	private int totalProductPrice;
	private int deliveryPrice;
	private int totalPrice;
	private String DiscountCode;
	public OrderBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderBean(int num, String userId, int productNum, int productQuantity, String date, String state,
			String address, String paymentState, String csState, int productPrice, int totalProductPrice,
			int deliveryPrice, int totalPrice, String discountCode) {
		super();
		this.num = num;
		this.userId = userId;
		this.productNum = productNum;
		this.productQuantity = productQuantity;
		this.inputDate = date;
		this.state = state;
		Address = address;
		this.paymentState = paymentState;
		this.csState = csState;
		ProductPrice = productPrice;
		this.totalProductPrice = totalProductPrice;
		this.deliveryPrice = deliveryPrice;
		this.totalPrice = totalPrice;
		DiscountCode = discountCode;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public String getDate() {
		return inputDate;
	}
	public void setDate(String date) {
		this.inputDate = date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPaymentState() {
		return paymentState;
	}
	public void setPaymentState(String paymentState) {
		this.paymentState = paymentState;
	}
	public String getCsState() {
		return csState;
	}
	public void setCsState(String csState) {
		this.csState = csState;
	}
	public int getProductPrice() {
		return ProductPrice;
	}
	public void setProductPrice(int productPrice) {
		ProductPrice = productPrice;
	}
	public int getTotalProductPrice() {
		return totalProductPrice;
	}
	public void setTotalProductPrice(int totalProductPrice) {
		this.totalProductPrice = totalProductPrice;
	}
	public int getDeliveryPrice() {
		return deliveryPrice;
	}
	public void setDeliveryPrice(int deliveryPrice) {
		this.deliveryPrice = deliveryPrice;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getDiscountCode() {
		return DiscountCode;
	}
	public void setDiscountCode(String discountCode) {
		DiscountCode = discountCode;
	}
}
