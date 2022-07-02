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

	private static String parentName = null;

	
	public static void orderMidPoint(HttpServletRequest request)
	{
		String[] nums 	=  request.getParameterValues("orderNum");
		
		
		//asdf
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
					+ ",?,?,?,?,?,sysdate,?,?,?,?,?,?,?)";

			con = DBManager.connnect("jw");
			
			pstmt = con.prepareStatement(sql);
			String[] product = request.getParameterValues("product");

			for (String pd : product) {
			setPstmt(pstmt,request,pd);
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("등록성공");
				request.setAttribute("r", "등록 성공");
			}
			}
			
		} catch (Exception e) {
			request.setAttribute("r", "서버 오류");
			System.out.println(e);
		}finally {
			DBManager.Close(con, pstmt, null);
		}
	}
	
	private static void setPstmt(PreparedStatement pstmt, HttpServletRequest request, String pd) throws SQLException {
		
			
		
		String[] splitPd = pd.split(",");
		String productNum = splitPd[0];
		int productQuantity = Integer.parseInt(splitPd[1]);
		int productPrice = Integer.parseInt(splitPd[2]);
		String userID = request.getParameter("userID");
		pstmt.setString(1, userID);
		pstmt.setString(2, request.getParameter("Reciever"));
		pstmt.setString(3, request.getParameter("PhoneNumber"));
		pstmt.setString(4, productNum);
		pstmt.setInt(5, productQuantity);
		pstmt.setString(6, "주문확인중");
		pstmt.setString(7, request.getParameter("Address"));
		pstmt.setString(8, "주문확인중");
		pstmt.setString(9, "결제대기");
		pstmt.setString(10, splitPd[2]);
		pstmt.setString(11, request.getParameter("DeliveryPrice"));
		pstmt.setInt(12, productPrice*productQuantity);
		}


	public static void getUser(HttpServletRequest request)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
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


	public static void getAllOrder(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			String sql = "select * from OrderTbl where Order_UserId = ?";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
		
			pstmt.setString(1, jwDBManager.getUserID());
			rs = pstmt.executeQuery();
		
			ArrayList<OrderBean> arrOb = new ArrayList<OrderBean>();
			while(rs.next())
			{
				arrOb.add(setOrderBean(rs));
			}
			request.setAttribute("arrOrder", arrOb);
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
		
		
	}


	private static OrderBean setOrderBean(ResultSet rs) throws SQLException {
		OrderBean ob = new OrderBean();
		
		ob.setNum(rs.getString("Order_Num"));
		ob.setUserId(rs.getString("Order_UserId"));
		ob.setProductNum(rs.getString("Order_ProductNumber"));
		ob.setProductQuantity(rs.getInt("Order_productQuantity"));
		ob.setReciever(rs.getString("Order_Reciever"));
		ob.setInputDate(rs.getString("Order_Date"));
		ob.setState(rs.getString("Order_State"));
		ob.setAddress(rs.getString("Order_Address"));
		ob.setDeliveryState(rs.getString("Order_DeliveryState"));
		ob.setPaymentState(rs.getString("Order_PaymentState"));
		ob.setProductPrice(rs.getInt("Order_ProductPrice"));
		ob.setDeliveryPrice(rs.getInt("Order_DeliveryPrice"));
		ob.setTotalPrice(rs.getInt("Order_TotalPrice"));
		
		return ob;
	}
	
}
