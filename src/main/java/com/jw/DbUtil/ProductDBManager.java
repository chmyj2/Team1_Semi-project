package com.jw.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.util.db.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductDBManager {
	private static void setPstmt(PreparedStatement pstmt, MultipartRequest mr) throws SQLException
	{
		String title 		= mr.getParameter("title");
		String actor 		= mr.getParameter("actor");
		String file  		= mr.getFilesystemName("file");
		String story 		= mr.getParameter("story");
		int num 			= Integer.parseInt(mr.getParameter("title"));
		int categoryNum 	= Integer.parseInt(mr.getParameter("title"));
		String name 		= mr.getParameter("title");
		int price			= Integer.parseInt(mr.getParameter("title"));;
		int supplyPrice		= Integer.parseInt(mr.getParameter("title"));;
		int vat				= Integer.parseInt(mr.getParameter("title"));;
		int margin			= Integer.parseInt(mr.getParameter("title"));;
		int surcharge		= Integer.parseInt(mr.getParameter("title"));;
		String content  	= mr.getParameter("title"); 
		String Thumbnail 	= mr.getParameter("title");
		String img1 		= mr.getParameter("title");
		String img2 		= mr.getParameter("title");
		String img3 		= mr.getParameter("title");
		String tags  		= mr.getParameter("title");
		String onExhibition = mr.getParameter("title");
		String onDiscount 	= mr.getParameter("title");
		String DiscountCode = mr.getParameter("title");
		int Stock			= Integer.parseInt(mr.getParameter("title"));;
				
		int indexCtn = 1;
		pstmt.setString(indexCtn++, title);
		pstmt.setString(indexCtn++, actor);
		pstmt.setString(indexCtn++, file);
		pstmt.setString(indexCtn++, story);
		pstmt.setInt(indexCtn++, num);
		pstmt.setInt(indexCtn++, categoryNum);
		pstmt.setString(indexCtn++, name);
		pstmt.setInt(indexCtn++, price);
		pstmt.setInt(indexCtn++, supplyPrice);
		pstmt.setInt(indexCtn++, vat);
		pstmt.setInt(indexCtn++, margin);
		pstmt.setInt(indexCtn++, surcharge);
		pstmt.setString(indexCtn++, content);
		pstmt.setString(indexCtn++, Thumbnail);
		pstmt.setString(indexCtn++, img1);
		pstmt.setString(indexCtn++, img2);
		pstmt.setString(indexCtn++, img3);
		pstmt.setString(indexCtn++, tags);
		pstmt.setString(indexCtn++, onExhibition);
		pstmt.setString(indexCtn++, onDiscount);
		pstmt.setString(indexCtn++, DiscountCode);
		pstmt.setInt(indexCtn++, Stock);	
	}
	
	
	public static void regProducts(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			String saveDirectory = request.getServletContext().getRealPath("img");
			System.out.println(saveDirectory);
			MultipartRequest mr = new MultipartRequest(request, saveDirectory,1024*1024*30,
					"utf-8",new DefaultFileRenamePolicy());
			
			
			String sql = "insert into movie_test values (Product_Number_Seq.nextval,"
					+ " ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			con = DBManager.connnect("jw");			
			pstmt = con.prepareStatement(sql);
			setPstmt(pstmt, mr);
			
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
	
	public static void getProduct(HttpServletRequest request)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			String sql = "select * from cartTbl where num_Pk = ?";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			pstmt.setInt(1, Integer.parseInt(request.getParameter("num")));
			ArrayList<ProductBean> arrProduct = new ArrayList<ProductBean>();
			if(rs.next())
			{
				arrProduct.add(ProductBeanSet(rs));
			}
			request.setAttribute("product", arrProduct);	
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
	}
	
	
	public static void getAllProduct(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			String sql = "select * from cartTbl";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			ArrayList<ProductBean> arrProduct = new ArrayList<ProductBean>();
			while(rs.next())
			{
				arrProduct.add(ProductBeanSet(rs));
			}
			
			request.setAttribute("reviews", arrProduct);
		
			
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
	}

	private static ProductBean ProductBeanSet(ResultSet rs) throws SQLException {
		ProductBean pb = new ProductBean();
		
		pb.setNum(rs.getInt("Num_PK"));;
		pb.setCategoryNum(rs.getInt("CategorytNum"));
		pb.setName(rs.getString("Name"));
		pb.setPrice(rs.getInt("Price"));
		pb.setSupplyPrice(rs.getInt("Supply_price"));
		pb.setVat(rs.getInt("VAT"));
		pb.setMargin(rs.getInt("Margin"));
		pb.setSurcharge(rs.getInt("surcharge"));
		pb.setContent(rs.getString("Contents"));
		pb.setThumbnail(rs.getString("Thumbnail"));
		pb.setImg1("Img1");
		pb.setImg2("Img2");
		pb.setImg3("Img3");
		ArrayList<String> arrTemp = new ArrayList<String>();
		arrTemp.add(rs.getString("Tag"));
		pb.setTags(arrTemp);
		pb.setOnExhibition(rs.getString("OnExhibition"));
		pb.setOnDiscount(rs.getString("OnDiscount"));
		pb.setDiscountCode(rs.getString("DiscountCode"));
		pb.setStock(rs.getInt("Stock"));
		return pb;
	}	
}
