package com.yj.drink_info_regController;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yj.drink_info_regController.DBManager;


public class DrinkDAO {
	public static void drink_Info_Update(HttpServletRequest request) {
			
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
			String[] cocktail_ingredient = mr.getParameterValues("addText");
			String img = mr.getFilesystemName("img");
			String[] cocktail_tag = mr.getParameterValues("addTextt");
			String[] cocktail_recipe = mr.getParameterValues("addTexttt");
			String cocktail_ingredient2 = "";
			String cocktail_tag2 = "";
			String cocktail_recipe2 = "";
			
			if (cocktail_ingredient != null) {
				for (String s : cocktail_ingredient) {
					System.out.println(s);
					cocktail_ingredient2 += s + "!";
				}
				
			}else {
				cocktail_ingredient2 = "재료 없음";
			}
			
			
			if (cocktail_tag != null) {
				for (String s : cocktail_tag) {
					System.out.println(s);
					cocktail_tag2 += s + "!";
				}	
			}else {
				cocktail_tag2 = "태그 없음";
			}				
			
			if (cocktail_recipe != null) {
				for (String v : cocktail_recipe) {
					System.out.println(v);
					cocktail_recipe2 += v + "@";
				}
				
			}else {
				cocktail_recipe2 = "태그 없음";
			}
	
			
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
		




	

}
