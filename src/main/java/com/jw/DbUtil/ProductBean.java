package com.jw.DbUtil;

import java.util.ArrayList;


public class ProductBean  {
	//Bean여기까지했음

	private String num;
	private String categoryNum;
	private String name;
	private int price;
	private int vat;
	private String content; 
	private String thumbnail;
	private String img1;
	private String img2;
	private String img3;
	private ArrayList<String> tags = new ArrayList<String>();
	private String onExhibition;
	private int Stock;
	public ProductBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	





	public ProductBean(String num, String categoryNum, String name, int price, int vat, String content,
			String thumbnail, String img1, String img2, String img3, ArrayList<String> tags, String onExhibition,
			int stock) {
		super();
		this.num = num;
		this.categoryNum = categoryNum;
		this.name = name;
		this.price = price;
		this.vat = vat;
		this.content = content;
		this.thumbnail = thumbnail;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.tags = tags;
		this.onExhibition = onExhibition;
		Stock = stock;
	}








	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getCategoryNum() {
		return categoryNum;
	}
	public void setCategoryNum(String categoryNum) {
		this.categoryNum = categoryNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getVat() {
		return vat;
	}
	public void setVat(int vat) {
		this.vat = vat;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public ArrayList<String> getTags() {
		return tags;
	}
	public void setTags(ArrayList<String> tags) {
		this.tags = tags;
	}
	public String getOnExhibition() {
		return onExhibition;
	}
	public void setOnExhibition(String onExhibition) {
		this.onExhibition = onExhibition;
	}
	public int getStock() {
		return Stock;
	}
	public void setStock(int stock) {
		Stock = stock;
	}	
}
