package com.yj.star_point;

public class Star_point {

	private String star_point;
    private String product;
    private String user_id;
    private double score;
    
   public Star_point() {
	// TODO Auto-generated constructor stub
}

public String getStar_point() {
	return star_point;
}

public void setStar_point(String star_point) {
	this.star_point = star_point;
}

public String getProduct() {
	return product;
}

public void setProduct(String product) {
	this.product = product;
}

public String getUser_id() {
	return user_id;
}

public void setUser_id(String user_id) {
	this.user_id = user_id;
}

public double getScore() {
	return score;
}

public void setScore(double score) {
	this.score = score;
}

public Star_point(String star_point, String product, String user_id, double score) {
	super();
	this.star_point = star_point;
	this.product = product;
	this.user_id = user_id;
	this.score = score;
}
   
   



}
