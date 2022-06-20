package com.yj.drink_info_CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yj.drink_info_CRUD.DBManager;


public class DrinkDAO {
	public static void drink_Info_Reg(HttpServletRequest request) {

		
		
		
	
		
			
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		con = DBManager.connect();
		String sql = "insert into cocktail_recipe_tbl values(cocktail_recipe_tbl_seq.nextval,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		String path = request.getSession().getServletContext().getRealPath("fileFolder");
		
		
		
		
		
			MultipartRequest mr = new MultipartRequest(request, path, 20*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			String cocktail_name = mr.getParameter("cocktail_name");
			String cocktail_info = mr.getParameter("cocktail_info");
			String[] cocktail_ingredient = mr.getParameterValues("cocktail_ingredient");
			String img = mr.getFilesystemName("img");
			String[] cocktail_tag = mr.getParameterValues("cocktail_tag");
			String[] cocktail_recipe = mr.getParameterValues("cocktail_recipe");
			String cocktail_ingredient2 = "";
			String cocktail_tag2 = "";
			String cocktail_recipe2 = "";

								
			
			if (cocktail_ingredient != null) {
				for (String s : cocktail_ingredient) {
					cocktail_ingredient2 += s + "!";
				}
				
			}else {
				cocktail_ingredient2 = "재료 없음";
			}
			
			
			if (cocktail_tag != null) {
				for (String s : cocktail_tag) {
					cocktail_tag2 += s + "!";
				}	
			}else {
				cocktail_tag2 = "태그 없음";
			}				
			
			if (cocktail_recipe != null) {
				for (String v : cocktail_recipe) {
					cocktail_recipe2 += v + "@";
				}
				
			}else {
				cocktail_recipe2 = "태그 없음";
			}
//	System.out.println("---------------------------");
//		
//			for (String c : cocktail_recipe) {
//				System.out.println(c);
//			}
//			System.out.println(cocktail_ingredient);
//			System.out.println(cocktail_ingredient2);
//			System.out.println(cocktail_tag);
//			System.out.println(cocktail_tag2);
//			System.out.println(cocktail_name);
//			System.out.println(cocktail_info);
//				for (String s : cocktail_ingredient) {
//					System.out.println(s);
//			}
//			System.out.println(cocktail_recipe);
//			
//			System.out.println(img);
			
			
			
			
			
			
			pstmt.setString(1, cocktail_name);
			pstmt.setString(2, cocktail_info);
			pstmt.setString(3, cocktail_ingredient2);
			pstmt.setString(4, cocktail_recipe2);
			pstmt.setString(5, img);
			pstmt.setString(6, cocktail_tag2);
			
			
			
			
			
			if(pstmt.executeUpdate() == 1){
				System.out.println("등록 성공");
			}
			
			
			
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(con, pstmt, rs);
			}
			
		
			
		}

	public static void Get_All_drink_Info(HttpServletRequest request) {
				Connection con = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				try {			
					String sql = "select * from cocktail_recipe_tbl";
					con = DBManager.connect();
					pstmt = con.prepareStatement(sql);			
					rs = pstmt.executeQuery();
					
					java.util.ArrayList<Drink> drinks = new java.util.ArrayList<Drink>();
					
					
					while (rs.next()) {		
					Drink d = new Drink();
					
					d.setCocktail_num(rs.getString("cocktail_num")); 
					d.setCocktail_name(rs.getString("cocktail_name"));
					d.setCocktail_info(rs.getNString("cocktail_info"));
					d.setCocktail_ingredient(rs.getString("cocktail_ingredient"));
					d.setCocktail_recipe(rs.getString("cocktail_recipe"));
					d.setCocktail_img(rs.getString("cocktail_img"));
					d.setCocktail_tag(rs.getString("cocktail_tag"));
					
					
					

					drinks.add(d);	
					}
					request.setAttribute("drinks",drinks);
								
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					DBManager.close(con, pstmt, rs);
				}
				
			}

	
	
	
	
	public static void getDrinkInfo(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {			
			String sql = "select * from cocktail_recipe_tbl where cocktail_num=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);			
			
			int num = Integer.parseInt(request.getParameter("num"));
			
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			Drink d = null;
			if (rs.next()) {	
			d = new Drink(); 
			
			d.setCocktail_num(rs.getString("cocktail_num")); 
			d.setCocktail_name(rs.getString("cocktail_name"));
			d.setCocktail_info(rs.getNString("cocktail_info"));
			d.setCocktail_ingredient(rs.getString("cocktail_ingredient"));
			d.setCocktail_recipe(rs.getString("cocktail_recipe"));
			d.setCocktail_img(rs.getString("cocktail_img"));
			d.setCocktail_tag(rs.getString("cocktail_tag"));
			
			
				
			request.setAttribute("drink", d);
			}
			
						
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
}

	
	
	
	
	
	
	public static void drink_info_Update(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "update cocktail_recipe_tbl set cocktail_name = ?, cocktail_info=?, cocktail_ingredient =? ,cocktail_recipe = ?, cocktail_img = ?, cocktail_tag = ? where cocktail_num = ?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			
			pstmt = con.prepareStatement(sql);
			String path = request.getSession().getServletContext().getRealPath("fileFolder");
			
			
				MultipartRequest mr = new MultipartRequest(request, path, 20*1024*1024, "utf-8", new DefaultFileRenamePolicy());
				String cocktail_name = mr.getParameter("cocktail_name");
				String cocktail_info = mr.getParameter("cocktail_info");
				String[] cocktail_ingredient = mr.getParameterValues("cocktail_ingredient");
				String img = mr.getFilesystemName("cocktail_img");
				String[] cocktail_tag = mr.getParameterValues("cocktail_tag");
				String[] cocktail_recipe = mr.getParameterValues("cocktail_recipe");
				String cocktail_num = mr.getParameter("cocktail_num");
				String cocktail_ingredient2 = "";
				String cocktail_tag2 = "";
				String cocktail_recipe2 = "";
									
				
				if (cocktail_ingredient != null) {
					for (String s : cocktail_ingredient) {
						cocktail_ingredient2 += s + "!";
					}
					
				}else {
					cocktail_ingredient2 = "재료 없음";
				}
				
				
				if (cocktail_tag != null) {
					for (String s : cocktail_tag) {
						cocktail_tag2 += s + "!";
					}	
				}else {
					cocktail_tag2 = "태그 없음";
				}				
				
				if (cocktail_recipe != null) {
					for (String v : cocktail_recipe) {
						cocktail_recipe2 += v + "@";
					}
					
				}else {
					cocktail_recipe2 = "태그 없음";
				}
		
//			
//				for (String c : cocktail_recipe) {
//					System.out.println(c);
//				}
//				System.out.println(cocktail_ingredient2);
//				System.out.println(cocktail_tag2);
//				System.out.println(cocktail_name);
//				
//				System.out.println(cocktail_info);
//					for (String s : cocktail_ingredient) {
//						System.out.println(s);
//					}
//				System.out.println(cocktail_recipe);
//				
//				System.out.println(img);
				

			
				
				
				

				pstmt.setString(1, cocktail_name);
				pstmt.setString(2, cocktail_info);
				pstmt.setString(3, cocktail_ingredient2);
				pstmt.setString(4, cocktail_recipe2);
				pstmt.setString(5, img);
				pstmt.setString(6, cocktail_tag2);
				pstmt.setString(7, cocktail_num);
				
				
				
				
				
				if(pstmt.executeUpdate() == 1){
					System.out.println("수정 성공");
				}
				
				
				
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					DBManager.close(con, pstmt, null);
				}
				
			
				
	
}

	public static void delete_drink_info(HttpServletRequest request) {

		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "delete cocktail_recipe_tbl where cocktail_num=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			int no = Integer.parseInt(request.getParameter("PKnum"));
			
			pstmt.setInt(1, no);
			
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "정보 삭제 완료");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "정보 삭제 오류");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
		
	
	}


	public static void searched_drink(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {			
			String sql = "select * from cocktail_recipe_tbl where cocktail_name like ? or cocktail_ingredient LIKE ?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String num = request.getParameter("selected_cocktail");
			
			pstmt.setString(1, '%' + num + '%');
			pstmt.setString(2, '%' + num + '%');
			
			System.out.println(num);
			rs = pstmt.executeQuery();
			
			java.util.ArrayList<Drink> drinks = new java.util.ArrayList<Drink>();
			
			
			while (rs.next()) {		
			Drink d = new Drink();
			
			d.setCocktail_num(rs.getString("cocktail_num")); 
			d.setCocktail_name(rs.getString("cocktail_name"));
			d.setCocktail_info(rs.getNString("cocktail_info"));
			d.setCocktail_ingredient(rs.getString("cocktail_ingredient"));
			d.setCocktail_recipe(rs.getString("cocktail_recipe"));
			d.setCocktail_img(rs.getString("cocktail_img"));
			d.setCocktail_tag(rs.getString("cocktail_tag"));
			
			
			

			drinks.add(d);	
			}
			request.setAttribute("drinks",drinks);
						
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
	
		
		
	
}
	
	
	




