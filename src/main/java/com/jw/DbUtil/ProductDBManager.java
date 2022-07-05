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
	

	public static void regProducts(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			String saveDirectory = request.getServletContext().getRealPath("img");
			System.out.println(saveDirectory);
			MultipartRequest mr = new MultipartRequest(request, saveDirectory,1024*1024*30,
					"utf-8",new DefaultFileRenamePolicy());
			
			String sql = "insert into productTbl values ('P'||Product_Number_Seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			con = DBManager.connnect("jw");
			
			pstmt = con.prepareStatement(sql);
			setPstmt(pstmt,mr);
			
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
			String sql= "select * from productTbl, categoryTbl where productTbl.CategorytNum = categoryTbl.Num_PK and productTbl.Num_PK = ?";
			//String sql = "select * from productTbl where Num_PK = ?";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, request.getParameter("num"));
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				ProductBean pb = ProductBeanSet(rs);
				pb.setCategoryNum(rs.getString(17));
				request.setAttribute("product", pb);
			}
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
			String sql = "select * from productTbl where OnSale = 'Y' and OnExhibition = 'Y'";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			ArrayList<ProductBean> arrProduct = new ArrayList<ProductBean>();
			while(rs.next())
			{
				arrProduct.add(ProductBeanSet(rs));
			}
			request.setAttribute("products", arrProduct);
			System.out.println("조회성공");
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
	}

	private static ProductBean ProductBeanSet(ResultSet rs) throws SQLException {
		ProductBean pb = new ProductBean();
		pb.setNum(rs.getString("Num_PK"));;
		pb.setCategoryNum(rs.getString("CategorytNum"));
		pb.setName(rs.getString("Name"));
		pb.setPrice(rs.getInt("Price"));
		pb.setVat(rs.getInt("VAT"));
		pb.setContent(rs.getString("Contents"));
		pb.setThumbnail(rs.getString("Thumbnail"));
		pb.setImg1(rs.getString("Img1"));
		pb.setImg2(rs.getString("Img2"));
		pb.setImg3(rs.getString("Img3"));
		ArrayList<String> arrTemp = new ArrayList<String>();
		String[] arrStrTemp = rs.getString("Tag").split("#");

		for (String str : arrStrTemp) {
			if(!str.equals(""))
			{
				arrTemp.add(str);							
			}
		}
		
		pb.setTags(arrTemp);
		pb.setOnExhibition(rs.getString("OnExhibition"));
		pb.setStock(rs.getInt("Stock"));
		return pb;
	}	
	
	private static void setPstmt(PreparedStatement pstmt, MultipartRequest mr) throws SQLException
	{
		String categoryNum 	= mr.getParameter("categoryNum");
		String name 		= mr.getParameter("name");
		int price		= Integer.parseInt(mr.getParameter("price"));
		int vat			= Integer.parseInt(mr.getParameter("onVAT"));
		String content  	= mr.getParameter("content"); 
		String Thumbnail 	= mr.getFilesystemName("thumbNail");
		String img1 		= mr.getFilesystemName("img1");
		String img2 		= mr.getFilesystemName("img2");
		String img3 		= mr.getFilesystemName("img3");
		String tags  		= mr.getParameter("tags");
		String onExhibition = mr.getParameter("onExhibition");
		String onSale		= mr.getParameter("onSale");
		int Stock			= Integer.parseInt(mr.getParameter("stock"));
		
		
		System.out.println(categoryNum);
		System.out.println(name);
		System.out.println(price);
		System.out.println(vat);
		System.out.println(content);
		System.out.println(Thumbnail);
		System.out.println(img1);
		System.out.println(img2);
		System.out.println(img3);
		System.out.println(tags);
		System.out.println(onExhibition);
		System.out.println(onSale);
		System.out.println(Stock);
		
		
		pstmt.setString(1, categoryNum);
		pstmt.setString(2, name);
		pstmt.setInt(3, price);
		pstmt.setInt(4, vat);
		pstmt.setString(5, content);
		pstmt.setString(6, Thumbnail);
		pstmt.setString(7, img1);
		pstmt.setString(8, img2);
		pstmt.setString(9, img3);
		pstmt.setString(10, tags);
		pstmt.setString(11, onSale);
		pstmt.setString(12, onExhibition);
		pstmt.setInt(13, Stock);	
	}
	
}
