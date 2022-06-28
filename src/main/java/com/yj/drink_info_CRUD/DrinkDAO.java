package com.yj.drink_info_CRUD;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sm.hc.Account;
import com.util.db.DBManager;


public class DrinkDAO {
	public static void drink_Info_Reg(HttpServletRequest request) {

		
		
		
	
		
			
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		con = DBManager.connnect("yj");
		String sql = "insert into cocktail_recipe_tbl values(cocktail_recipe_tbl_seq.nextval,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		String path = request.getSession().getServletContext().getRealPath("fileFolder");
		
		
		System.out.println(path);
		
		
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
				DBManager.Close(con, pstmt, rs);
			}
			
		
			
		}

	public static void Get_All_drink_Info(HttpServletRequest request) {
				Connection con = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				try {			
					String sql = "select * from cocktail_recipe_tbl";
					con = DBManager.connnect("yj");
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
					DBManager.Close(con, pstmt, rs);
				}
				
			}

	
	
	
	
	public static void getDrinkInfo(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {			
			String sql = "select * from cocktail_recipe_tbl where cocktail_num=?";
			con = DBManager.connnect("yj");
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
			DBManager.Close(con, pstmt, rs);
		}
}

	
	
	
	
	
	
	public static void drink_info_Update(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "update cocktail_recipe_tbl set cocktail_name = ?, cocktail_info=?, cocktail_ingredient =? ,cocktail_recipe = ?, cocktail_img = ?, cocktail_tag = ? where cocktail_num = ?";
			con = DBManager.connnect("yj");
			pstmt = con.prepareStatement(sql);
			
			
			pstmt = con.prepareStatement(sql);
			String path = request.getSession().getServletContext().getRealPath("fileFolder");
			
			
				MultipartRequest mr = new MultipartRequest(request, path, 20*1024*1024, "utf-8", new DefaultFileRenamePolicy());
				String cocktail_name = mr.getParameter("cocktail_name");
				String cocktail_info = mr.getParameter("cocktail_info");
				String[] cocktail_ingredient = mr.getParameterValues("cocktail_ingredient");
				String[] cocktail_tag = mr.getParameterValues("cocktail_tag");
				String[] cocktail_recipe = mr.getParameterValues("cocktail_recipe");
				String cocktail_num = mr.getParameter("cocktail_num");
				String cocktail_ingredient2 = "";
				String cocktail_tag2 = "";
				String cocktail_recipe2 = "";
				
				String img = mr.getParameter("cocktail_img");
				String newFile = mr.getFilesystemName("cocktail_img2"); // 사진을 새로 추가함.

				System.out.println(newFile);
									
				
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
				
				if (newFile==null) {				
					pstmt.setString(5, img);
					System.out.println("옛날사진");
				} else {
					pstmt.setString(5, newFile);
					String delFile = path + "/" + img; //기존파
					File f = new File(delFile);
					System.out.println("기존사진삭제");
					f.delete();
				}
				
				pstmt.setString(6, cocktail_tag2);
				pstmt.setString(7, cocktail_num);
				
				
				
				
				
				if(pstmt.executeUpdate() == 1){
					System.out.println("수정 성공");
				}
				
				
				
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					DBManager.Close(con, pstmt, null);
				}
				
			
				
	
}

	public static void delete_drink_info(HttpServletRequest request) {

		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "delete cocktail_recipe_tbl where cocktail_num=?";
			con = DBManager.connnect("yj");
			pstmt = con.prepareStatement(sql);
			
			int no = Integer.parseInt(request.getParameter("PKnum"));
			String img =request.getParameter("img");
			
			pstmt.setInt(1, no);
			
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "정보 삭제 완료");
			}
			
			
				
				String delFile = "/Users/choeyongjun/EclipseWorkspace/semiWorkSpace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/bestteam1/fileFolder/" + img; //기존파
				File f = new File(delFile);
				System.out.println("기존사진삭제");
				f.delete();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "정보 삭제 오류");
		} finally {
			DBManager.Close(con, pstmt, null);
		}
		
		
	
	}


	public static void searched_drink(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {			
			request.setCharacterEncoding("UTF-8");
			
			String sql = "select * from cocktail_recipe_tbl where upper (cocktail_name) like upper( ? ) or upper (cocktail_tag) LIKE upper( ?)";
			con = DBManager.connnect("yj");
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
			DBManager.Close(con, pstmt, rs);
		}
		
	}

	
	
		
		
	
}
	
	
	




