package com.jw.DbUtil;

public class OrderBean {
	private String num;
	private String userId;
	private String productNum;
	private int productQuantity;
	private String reciever;
	private String inputDate;
	private String state;
	private String address;
	private String paymentState;
	private int productPrice;
	private String deliveryState;
	private int deliveryPrice;
	private int totalPrice;
	
	
	public OrderBean() {
		super();
		// TODO Auto-generated constructor stub
	}


	public OrderBean(String num, String userId, String productNum, int productQuantity, String reciever,
			String inputDate, String state, String address, String paymentState, int productPrice, int deliveryPrice,
			int totalPrice) {
		super();
		this.num = num;
		this.userId = userId;
		this.productNum = productNum;
		this.productQuantity = productQuantity;
		this.reciever = reciever;
		this.inputDate = inputDate;
		this.state = state;
		this.address = address;
		this.paymentState = paymentState;
		this.productPrice = productPrice;
		this.deliveryPrice = deliveryPrice;
		this.totalPrice = totalPrice;
	}

	public String getDeliveryState() {
		return deliveryState;
	}


	public void setDeliveryState(String deliveryState) {
		this.deliveryState = deliveryState;
	}
	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
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


	public String getReciever() {
		return reciever;
	}


	public void setReciever(String reciever) {
		this.reciever = reciever;
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
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPaymentState() {
		return paymentState;
	}


	public void setPaymentState(String paymentState) {
		this.paymentState = paymentState;
	}


	public int getProductPrice() {
		return productPrice;
	}


	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
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
