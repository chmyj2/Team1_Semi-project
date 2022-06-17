package com.yj.star_point;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yj.drink_info_CRUD.DBManager;
import com.yj.drink_info_CRUD.Drink;

public class StarDao {

	public static void star_reg(HttpServletRequest request) {

		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
		con = DBManager.connect();
		String sql = "insert into star_point_tbl values(star_point_tbl_seq.nextval,?,?,?)";
		pstmt = con.prepareStatement(sql);
		
		
		
		
		String cocktail_num = request.getParameter("num");
		String userId = request.getParameter("user_id");
		int rating = Integer.parseInt(request.getParameter("rating"));

								
			

			System.out.println(cocktail_num);			
			System.out.println(userId);
			System.out.println(rating);
			
			
			
			
			
			
			pstmt.setString(1, cocktail_num);
			pstmt.setString(2, userId);
			pstmt.setInt(3, rating);
			
			
			
			
			
			
			if(pstmt.executeUpdate() == 1){
				System.out.println("등록 성공");
			}
			
			
			
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(con, pstmt, null);
			}
			
		
			
		}

	public static void star_point_cal(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {			
			String sql = "select * from cocktail_recipe_tbl";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);			
			rs = pstmt.executeQuery();
			
//			java.util.ArrayList<StarPoint> s = new java.util.ArrayList<Drink>();
//			
//			
//			while (rs.next()) {		
//			Drink d = new Drink();
//			
//			d.setCocktail_num(rs.getString("cocktail_num")); 
//			d.setCocktail_name(rs.getString("cocktail_name"));
//			d.setCocktail_info(rs.getNString("cocktail_info"));
//			d.setCocktail_ingredient(rs.getString("cocktail_ingredient"));
//			d.setCocktail_recipe(rs.getString("cocktail_recipe"));
//			d.setCocktail_img(rs.getString("cocktail_img"));
//			d.setCocktail_tag(rs.getString("cocktail_tag"));
//			
//			
//			
//
//			drinks.add(d);	
//			}
//			request.setAttribute("drinks",drinks);
//						
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}



}
