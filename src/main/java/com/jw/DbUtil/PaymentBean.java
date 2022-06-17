package com.jw.DbUtil;

public class PaymentBean {
	

	private String code;
	private int orderNum;
	private String payWay;
	private String payDate;
	private int totalPay;
	private int extraPay;
	private int depositPay;
	private String depositor;
	private String bankName;
	public PaymentBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PaymentBean(String code, int orderNum, String payWay, String payDate, int totalPay, int extraPay,
			int depositPay, String depositor, String bankName) {
		super();
		this.code = code;
		this.orderNum = orderNum;
		this.payWay = payWay;
		this.payDate = payDate;
		this.totalPay = totalPay;
		this.extraPay = extraPay;
		this.depositPay = depositPay;
		this.depositor = depositor;
		this.bankName = bankName;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getPayWay() {
		return payWay;
	}
	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public int getTotalPay() {
		return totalPay;
	}
	public void setTotalPay(int totalPay) {
		this.totalPay = totalPay;
	}
	public int getExtraPay() {
		return extraPay;
	}
	public void setExtraPay(int extraPay) {
		this.extraPay = extraPay;
	}
	public int getDepositPay() {
		return depositPay;
	}
	public void setDepositPay(int depositPay) {
		this.depositPay = depositPay;
	}
	public String getDepositor() {
		return depositor;
	}
	public void setDepositor(String depositor) {
		this.depositor = depositor;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

}
