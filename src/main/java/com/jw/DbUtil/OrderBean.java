package com.jw.DbUtil;

public class OrderBean {
	private int num;
	private String userId;
	private int productNum;
	private int productQuantity;
	private String reciever;
	private String inputDate;
	private String state;
	private String Address;
	private String paymentState;
	private int ProductPrice;
	private int deliveryPrice;
	private int totalPrice;
	
	
	public OrderBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public OrderBean(int num, String userId, int productNum, int productQuantity, String reciever, String inputDate,
			String state, String address, String paymentState, int productPrice, int deliveryPrice, int totalPrice) {
		super();
		this.num = num;
		this.userId = userId;
		this.productNum = productNum;
		this.productQuantity = productQuantity;
		this.reciever = reciever;
		this.inputDate = inputDate;
		this.state = state;
		Address = address;
		this.paymentState = paymentState;
		ProductPrice = productPrice;
		this.deliveryPrice = deliveryPrice;
		this.totalPrice = totalPrice;
	}

	public String getReciever() {
		return reciever;
	}

	public void setReciever(String reciever) {
		this.reciever = reciever;
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
	public String getInputDate() {
		return inputDate;
	}
	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
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
	public int getProductPrice() {
		return ProductPrice;
	}
	public void setProductPrice(int productPrice) {
		ProductPrice = productPrice;
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
	
}
