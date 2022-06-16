package com.yj.drink_info_CRUD;

public class Drink {

	 	private String cocktail_num;
	 	private String cocktail_name;
	 	private String cocktail_info;
	 	private String cocktail_ingredient;
	 	private String cocktail_recipe;
	 	private String cocktail_img;
	 	private String cocktail_tag;
	 	
	 	
	 	public Drink() {
			// TODO Auto-generated constructor stub
		}


		public Drink(String cocktail_num, String cocktail_name, String cocktail_info, String cocktail_ingredient,
				String cocktail_recipe, String cocktail_img, String cocktail_tag) {
			super();
			this.cocktail_num = cocktail_num;
			this.cocktail_name = cocktail_name;
			this.cocktail_info = cocktail_info;
			this.cocktail_ingredient = cocktail_ingredient;
			this.cocktail_recipe = cocktail_recipe;
			this.cocktail_img = cocktail_img;
			this.cocktail_tag = cocktail_tag;
		}


		public String getCocktail_num() {
			return cocktail_num;
		}


		public void setCocktail_num(String cocktail_num) {
			this.cocktail_num = cocktail_num;
		}


		public String getCocktail_name() {
			return cocktail_name;
		}


		public void setCocktail_name(String cocktail_name) {
			this.cocktail_name = cocktail_name;
		}


		public String getCocktail_info() {
			return cocktail_info;
		}


		public void setCocktail_info(String cocktail_info) {
			this.cocktail_info = cocktail_info;
		}


		public String getCocktail_ingredient() {
			return cocktail_ingredient;
		}


		public void setCocktail_ingredient(String cocktail_ingredient) {
			this.cocktail_ingredient = cocktail_ingredient;
		}


		public String getCocktail_recipe() {
			return cocktail_recipe;
		}


		public void setCocktail_recipe(String cocktail_recipe) {
			this.cocktail_recipe = cocktail_recipe;
		}


		public String getCocktail_img() {
			return cocktail_img;
		}


		public void setCocktail_img(String cocktail_img) {
			this.cocktail_img = cocktail_img;
		}


		public String getCocktail_tag() {
			return cocktail_tag;
		}


		public void setCocktail_tag(String cocktail_tag) {
			this.cocktail_tag = cocktail_tag;
		}
	 	
	 	
	
	
}
