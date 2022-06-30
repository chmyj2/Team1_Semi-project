package com.jw.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import com.sm.hc.Account;
import com.util.db.DBManager;

public class OrderDBManager {

	
	public static void orderMidPoint(HttpServletRequest request)
	{
		String[] nums 	=  request.getParameterValues("orderNum");
		
		
		
		HashMap<String, Integer> mapStr = new HashMap<String, Integer>();
		
		String sql = "select * from productTbl where Num_PK IN (";
		for (String str: nums) {
			String[] tempStr = null;
			tempStr  = str.split(",");
			mapStr.put(tempStr[0], Integer.parseInt(tempStr[1]));
		}
		
		
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

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			con = DBManager.connnect("jw");
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
	
	
	public static void regOrder(HttpServletRequest request)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {

			String sql = "insert into OrderTbl values (Order_Number_Seq.nextval"
					+ "?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			con = DBManager.connnect("jw");
			
			pstmt = con.prepareStatement(sql);
			setPstmt(pstmt,request);
			
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
	
	private static void setPstmt(PreparedStatement pstmt, HttpServletRequest request) throws SQLException {
		pstmt.setString(1, request.getParameter("UserId"));
		pstmt.setString(2, request.getParameter("Reciever"));
		pstmt.setString(3, request.getParameter("PhoneNumber"));
		pstmt.setString(4, request.getParameter("ProductNumber"));
		pstmt.setString(5, request.getParameter("Quantity"));
		pstmt.setString(6, "sysdate");
		pstmt.setString(7, "주문확인중");
		pstmt.setString(8, request.getParameter("Address"));
		pstmt.setString(9, "주문확인중");
		pstmt.setString(10, "결제대기");
		pstmt.setString(11, request.getParameter("ProductPrice"));
		pstmt.setString(12, request.getParameter("DeliveryPrice"));
		pstmt.setString(13, request.getParameter("TotalPrice"));
	}


	public static void getUser(HttpServletRequest request)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			
			String userID =request.getParameter("userID");
			String Reciever	=request.getParameter("Reciever");
			String Address =request.getParameter("Address");
			String PhoneNumber =request.getParameter("PhoneNumber");
			String[] product = request.getParameterValues("product");
			String DeliveryPrice =request.getParameter("DeliveryPrice");
						
			
			String sql = "select * from user_info_tbl where user_id = ?";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, jwDBManager.getUserID());
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				Account tempAC = new Account();
				
				tempAC.setUser_id(rs.getString("user_id"));
				tempAC.setUser_name(rs.getString("user_name"));
				tempAC.setUser_phoneNumber(rs.getString("user_phoneNumber"));
				tempAC.setUser_addr(rs.getString("user_addr"));
				
				request.setAttribute("account", tempAC);
			}

			
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
	}
	
}
