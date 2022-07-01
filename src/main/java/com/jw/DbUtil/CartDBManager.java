package com.jw.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.db.DBManager;

public class CartDBManager {
	public static void regCart(HttpServletRequest request) {
		String productNumber	= request.getParameter("num");
		CartBean cb =getCartUseProduct(request,productNumber);
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String userId 			= "yorunohosi";
		int quantity 	= Integer.parseInt(request.getParameter("Quantity"));
		
		try {
			if(cb  != null)
			{
				String sql = "update cartTbl set Cart_ProductQuantity = ? where Cart_Number = ?";
				
				con = DBManager.connnect("jw");

				pstmt = con.prepareStatement(sql);

				
				System.out.println(quantity+cb.getProductQuantity());
				System.out.println(productNumber+cb.getNumber());
				pstmt.setInt(1, quantity +cb.getProductQuantity());
				pstmt.setString(2, cb.getNumber());
				
				if(pstmt.executeUpdate()==1) {
					System.out.println("등록성공");
					request.setAttribute("result", "등록 성공");
				}
				return;

			}
			
			String sql = "insert into cartTbl values ('C'||Cart_Number_Seq.nextval, ? ,? ,? ,sysdate)";
			con = DBManager.connnect("jw");

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, userId);
			pstmt.setString(2, productNumber);
			pstmt.setInt(3, quantity);
			
			
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("등록성공");
				request.setAttribute("result", "등록 성공");
			}
			
		} catch (Exception e) {
			request.setAttribute("result", "등록 실패");
			System.out.println(e);
		}finally {
			DBManager.Close(con, pstmt, null);
		}
	}

	private static CartBean cartBeanSet(ResultSet rs) throws SQLException
	{
		CartBean cb = new CartBean();
		
		cb.setNumber(rs.getString("Cart_Number"));
		cb.setProductNum(rs.getString("Cart_Product_Num"));
		cb.setProductQuantity(rs.getInt("Cart_ProductQuantity"));
		cb.setUserId(rs.getString("Cart_userID"));
		cb.setInputDate(rs.getString("Cart_Date"));
		System.out.println(cb.getProductNum());
		return cb;
	}



	public static void getAllCartUseUserId(HttpServletRequest request)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			String sql = "select * from cartTbl where Cart_userID = ?" ;
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, jwDBManager.getUserID());
			
			rs = pstmt.executeQuery();

			HashMap<String, Integer> mapStr = new HashMap<String, Integer>();
			while(rs.next())
			{
				mapStr.put(rs.getString("Cart_Product_Num"), rs.getInt("Cart_ProductQuantity"));
			}
			pstmt.close();
			rs.close();
			//한번 끝
			sql = "select * from productTbl where Num_PK IN (";
			
			Iterator<String> keys = mapStr.keySet().iterator();
			while(keys.hasNext())
			{
				String key = keys.next();
				
				if(!keys.hasNext())
				{
					sql+= "'"+key+"')";
					break;
				}
				sql+="'"+key+"',";
			}
			System.out.println(sql);
			
		

			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<SmallOrderBean> arrOB = new ArrayList<SmallOrderBean>();
			
			while(rs.next())
			{
				String productNum = rs.getString("Num_PK");
				int quantity = mapStr.get(productNum);
				String productName = rs.getString("Name");
				String productPrice = rs.getString("Price");
				String thumbnail  =  rs.getString("Thumbnail");
				
				arrOB.add(new SmallOrderBean(productNum,quantity,productName,productPrice, thumbnail));
			}

			request.setAttribute("order", arrOB);
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
		
		
	}
	public static CartBean getCartUseProduct(HttpServletRequest request, String productNum)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			String sql = "select * from cartTbl where Cart_Product_Num = ?" ;
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			System.out.println(productNum);
			System.out.println(pstmt);

			pstmt.setString(1, productNum);
			
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				return cartBeanSet(rs);				
			}
			return null;				
			
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
			
		}
		return null;
		
	}

	public static void deleteCartUseProduct(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			String sql = "delete cartTbl where Cart_Product_Num = ?" ;
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			

			pstmt.setString(1, request.getParameter("productNum"));
						
			if(pstmt.executeUpdate()==1) {
				System.out.println("등록성공");
				request.setAttribute("result", "등록 성공");
			}
			return;
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
			
		}
	}
	
}
