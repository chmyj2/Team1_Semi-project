package com.jw.DbUtil;

import java.util.ArrayList;


public class ProductBean  {
	//Bean여기까지했음

	private int num;
	private int categoryNum;
	private String name;
	private int price;
	private int supplyPrice;
	private int vat;
	private int margin;
	private int surcharge;
	private String content; 
	private String Thumbnail;
	private String img1;
	private String img2;
	private String img3;
	private ArrayList<String> tags = new ArrayList<String>();
	private String onExhibition;
	private String onDiscount;
	private String DiscountCode;
	private int Stock;
	public ProductBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductBean(int num, int categoryNum, String name, int price, int supplyPrice, int vat, int margin,
			int surcharge, String content, String thumbnail, String img1, String img2, String img3,
			ArrayList<String> tags, String onExhibition, String onDiscount, String discountCode, int stock) {
		super();
		this.num = num;
		this.categoryNum = categoryNum;
		this.name = name;
		this.price = price;
		this.supplyPrice = supplyPrice;
		this.vat = vat;
		this.margin = margin;
		this.surcharge = surcharge;
		this.content = content;
		Thumbnail = thumbnail;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.tags = tags;
		this.onExhibition = onExhibition;
		this.onDiscount = onDiscount;
		DiscountCode = discountCode;
		Stock = stock;
	}
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getCategoryNum() {
		return categoryNum;
	}
	public void setCategoryNum(int categoryNum) {
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
	public int getSupplyPrice() {
		return supplyPrice;
	}
	public void setSupplyPrice(int supplyPrice) {
		this.supplyPrice = supplyPrice;
	}
	public int getVat() {
		return vat;
	}
	public void setVat(int vat) {
		this.vat = vat;
	}
	public int getMargin() {
		return margin;
	}
	public void setMargin(int margin) {
		this.margin = margin;
	}
	public int getSurcharge() {
		return surcharge;
	}
	public void setSurcharge(int surcharge) {
		this.surcharge = surcharge;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getThumbnail() {
		return Thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		Thumbnail = thumbnail;
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
	public String getOnDiscount() {
		return onDiscount;
	}
	public void setOnDiscount(String onDiscount) {
		this.onDiscount = onDiscount;
	}
	public String getDiscountCode() {
		return DiscountCode;
	}
	public void setDiscountCode(String discountCode) {
		DiscountCode = discountCode;
	}
	public int getStock() {
		return Stock;
	}
	public void setStock(int stock) {
		Stock = stock;
	}	
}
