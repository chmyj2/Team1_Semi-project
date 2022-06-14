package com.jw.order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.util.db.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductManager {

	public static void getAll(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			String sql = "select * from ProductTbl";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			
			
			ArrayList<ProductBean> arrProduct = new ArrayList<ProductBean>();
			while(rs.next())
			{
				ProductBean pb= new ProductBean();
				pb.setNumber(rs.getInt("Product_Num"));
				pb.setExp(rs.getString("Product_Exp"));
				pb.setName(rs.getString("Product_Name"));
				pb.setPrice(rs.getInt("Product_Price"));	
				ArrayList<String> arrImg = new ArrayList<String>();
				arrImg.add(rs.getString("Proudct_Img1"));
				
				if(!rs.getString("Proudct_Img2").equals(""))
				{
					arrImg.add(rs.getString("Proudct_Img2"));
				}
				if(!rs.getString("Proudct_Img3").equals(""))
				{
					arrImg.add(rs.getString("Proudct_Img3"));
				}
				if(!rs.getString("Proudct_Img4").equals(""))
				{
					arrImg.add(rs.getString("Proudct_Img4"));
				}
				pb.setImg(arrImg);
				
				ArrayList<String> arrTag = new ArrayList<String>();
				String tempTag =  rs.getString("Product_Tag");
				arrTag.add(tempTag);
				pb.setTag(arrTag);
			}
			
			request.setAttribute("products", arrProduct);
		
			
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}

	}

	public static void RegProduct(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		
		try {
			
			//이름,설명,가격,이미지1~4,태그
			String sql = "insert into ProductTbl values (Product_Number_Seq.nextval, ?, ?, ?, ?,?,?,?,?)";
			con = DBManager.connnect("jw");
			System.out.println("연결성공");
			

			String saveDirectory = request.getServletContext().getRealPath("img");
			System.out.println(saveDirectory);
			MultipartRequest mr = new MultipartRequest(request, saveDirectory,1024*1024*30,
					"utf-8",new DefaultFileRenamePolicy());
			
				
			String title = mr.getParameter("title");
			String exp = mr.getParameter("exp");
			int price = Integer.parseInt(mr.getParameter("price"));
			String file  = mr.getFilesystemName("file");
			String file1  = mr.getFilesystemName("file1");
			String file2  = mr.getFilesystemName("file2");
			String file3  = mr.getFilesystemName("file3");
			String tag = mr.getParameter("tag");
			
			System.out.println(title);
			System.out.println(exp);
			System.out.println(file);
			System.out.println(file1);
			System.out.println(file2);
			System.out.println(file3);
			System.out.println(tag);
			
			pstmt = con.prepareStatement(sql);

			//insert into ProductTbl values (Product_Number_Seq.nextval, '이름', '설명', 10000, '이미지','태그');

			pstmt.setString(1, title);
			pstmt.setString(2, exp);
			pstmt.setInt(3, price);
			pstmt.setString(4, file);
			pstmt.setString(5, file1);
			pstmt.setString(6, file2);
			pstmt.setString(7, file3);
			pstmt.setString(8, tag);
			
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("등록성공");
				request.setAttribute("r", "등록 성공");
			}
			
		} catch (Exception e) {
			request.setAttribute("r", "서버 오류");
			System.out.println(e);
		}finally {
			DBManager.Close(con, pstmt, null);
		}
		
	}
	
}
