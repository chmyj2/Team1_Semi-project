package com.jw.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.db.DBManager;

public class CartDBManager {
	public static void regCart(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		
		try {
			String sql = "insert into Cart_Number values (시퀀스, ? ,? ,? ,?)";
			con = DBManager.connnect("jw");
			
			String saveDirectory = request.getServletContext().getRealPath("img");
			System.out.println(saveDirectory);
			MultipartRequest mr = new MultipartRequest(request, saveDirectory,1024*1024*30,
					"utf-8",new DefaultFileRenamePolicy());
			
			
			String number 			= mr.getParameter("title");
			String userId 			= mr.getParameter("story");
			String productNumber 	= mr.getParameter("actor");
			String productQuantity  = mr.getParameter("story");
			String inputDate		= mr.getParameter("story");
			
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, number);
			pstmt.setString(2, userId);
			pstmt.setString(3, productNumber);
			pstmt.setString(4, productQuantity);
			pstmt.setString(5, inputDate);
			
			
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

	private static CartBean cartBeanSet(ResultSet rs) throws SQLException
	{
		CartBean cb = new CartBean();
		
		cb.setNumber(rs.getInt("Cart_Number"));
		cb.setProductNum(rs.getInt("Cart_Product_Num"));
		cb.setProductQuantity(rs.getInt("Cart_ProductQuantity"));
		cb.setUserId(rs.getString("Cart_userID"));
		cb.setInputDate(rs.getString("Cart_Date"));
		
		return cb;
	}
	public static void getCartDetail(HttpServletRequest request)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			
			String sql = "select * from Cart_Number where Cart_Number = ?" ;
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, Integer.parseInt(request.getParameter("number")));
			
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				request.setAttribute("cartDetail", cartBeanSet(rs));				
			}
			
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
	}
	
	public static void getAllReview(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			String sql = "select * from cartTbl";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			ArrayList<CartBean> arrReview = new ArrayList<CartBean>();
			while(rs.next())
			{
				arrReview.add(cartBeanSet(rs));
			}
			
			request.setAttribute("reviews", arrReview);
		
			
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
	}
	
}
