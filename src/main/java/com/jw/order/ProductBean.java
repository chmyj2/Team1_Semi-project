package com.jw.order;

import java.util.ArrayList;

/* DB
    Product_Num Number(8 ) PRIMARY KEY,
	Product_Name VARCHAR2(20 char) not null,
	Product_Exp VARCHAR2(200 char) not null,
	Product_Price Number(8) not null,
	Product_Img varchar2(400 char)  not null,
	Product_Tag varchar2(200 char) not null
 */
public class ProductBean {
	private int number;
	private int price;
	private String name;
	private String exp;
	private ArrayList<String> img = new ArrayList<String>();
	private ArrayList<String> tag = new ArrayList<String>();
	public ProductBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductBean(int number, int price, String name, String exp, ArrayList<String> img, ArrayList<String> tag) {
		super();
		this.number = number;
		this.price = price;
		this.name = name;
		this.exp = exp;
		this.img = img;
		this.tag = tag;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	public ArrayList<String> getImg() {
		return img;
	}
	public void setImg(ArrayList<String> img) {
		this.img = img;
	}
	public ArrayList<String> getTag() {
		return tag;
	}
	public void setTag(ArrayList<String> tag) {
		this.tag = tag;
	}
	
}
