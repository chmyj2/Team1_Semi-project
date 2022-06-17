package com.jw.DbUtil;

public class DiscountInfoBean {
	
	private String code;
	private String progress;
	private String type;
	private String name;
	private String startDate;
	private String endDate;
	private String Coverage;
	private String Target;
	private int	rate;
	private int amount;
	
	public DiscountInfoBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DiscountInfoBean(String code, String progress, String type, String name, String startDate, String endDate,
			String coverage, String target, int rate, int amount) {
		super();
		this.code = code;
		this.progress = progress;
		this.type = type;
		this.name = name;
		this.startDate = startDate;
		this.endDate = endDate;
		Coverage = coverage;
		Target = target;
		this.rate = rate;
		this.amount = amount;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getCoverage() {
		return Coverage;
	}
	public void setCoverage(String coverage) {
		Coverage = coverage;
	}
	public String getTarget() {
		return Target;
	}
	public void setTarget(String target) {
		Target = target;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
}