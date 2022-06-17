package com.jw.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;

import com.util.db.DBManager;




public class CategoryDBManager {
	
	public static void printAllTag()
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			String sql = "select * from categoryTbl";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<CategoryBean> tempSecondCategorys = new ArrayList<CategoryBean>();
			ArrayList<CategoryBean> tempThirdCategorys = new ArrayList<CategoryBean>();
			ArrayList<CategoryBean> arrCategory = new ArrayList<CategoryBean>();
			while(rs.next())
			{
				CategoryBean cb = new CategoryBean();	
				
				cb.setHierarchyLevel(rs.getInt("Hierarchy_Level"));
				cb.setName(rs.getString("Name"));
				cb.setNum(rs.getString("Num_PK"));
				
				if(cb.getHierarchyLevel()==1)
				{
					cb.setParentNum("");
					arrCategory.add(cb);
				}
				else if(cb.getHierarchyLevel()==2)
				{
					cb.setParentNum(rs.getString("Parent_Num"));
					tempSecondCategorys.add(cb);
				}
				else if(cb.getHierarchyLevel()==3)
				{
					cb.setParentNum(rs.getString("Parent_Num"));
					tempThirdCategorys.add(cb);
				}
			}
			
			for (CategoryBean cb3 : tempThirdCategorys) {
				for (CategoryBean cb2 : tempSecondCategorys) {
					if(cb3.getParentNum() == cb2.getNum())
					{
						cb2.addChild(cb3);
					}
				}
			}
			for (CategoryBean cb2 : tempSecondCategorys) {
				for (CategoryBean cb : arrCategory) {
					if(cb2.getParentNum() == cb.getNum())
					{
						cb.addChild(cb2);
					}
				}
			}
			
			for (CategoryBean cb : arrCategory) {
				System.out.println(cb.getName());
				for (CategoryBean cb1 : cb.getChild()) {
					System.out.println("\t"+cb1.getName());
					for (CategoryBean cb2 : cb1.getChild()) {
						System.out.println("\t+\t"+cb2.getName());
					}
				}
				
			}
			
		
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
	}
	
	
	public static void getAllTag(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			String sql = "select * from categoryTbl";
			con = DBManager.connnect("jw");
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<CategoryBean> tempSecondCategorys = new ArrayList<CategoryBean>();
			ArrayList<CategoryBean> tempThirdCategorys = new ArrayList<CategoryBean>();
			ArrayList<CategoryBean> arrCategory = new ArrayList<CategoryBean>();
			while(rs.next())
			{
				CategoryBean cb = new CategoryBean();	
				
				cb.setHierarchyLevel(rs.getInt("Hierarchy_Level"));
				cb.setName(rs.getString("Name"));
				cb.setNum(rs.getString("Num_PK"));
				
				if(cb.getHierarchyLevel()==1)
				{
					cb.setParentNum("");
					arrCategory.add(cb);
				}
				else if(cb.getHierarchyLevel()==2)
				{
					cb.setParentNum(rs.getString("Parent_Num"));
					tempSecondCategorys.add(cb);
				}
				else if(cb.getHierarchyLevel()==3)
				{
					cb.setParentNum(rs.getString("Parent_Num"));
					tempThirdCategorys.add(cb);
				}
			}
			
			for (CategoryBean cb3 : tempThirdCategorys) {
				for (CategoryBean cb2 : tempSecondCategorys) {
					if(cb3.getParentNum() == cb2.getNum())
					{
						cb2.addChild(cb3);
					}
				}
			}
			for (CategoryBean cb2 : tempSecondCategorys) {
				for (CategoryBean cb : arrCategory) {
					if(cb2.getParentNum() == cb.getNum())
					{
						cb.addChild(cb2);
					}
				}
			}
			
			request.setAttribute("categories", arrCategory);
		
		}catch (Exception e) {
			System.out.println(e);
		}
		finally {
			DBManager.Close(con, pstmt, rs);
		}
	}
	
	
	
	
	public static void regTag(HttpServletRequest request) {
		String sql = "insert into categoryTbl values('A'||category_Number_Seq.nextval,?,?,?)";
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			String parentNum = request.getParameter("num");
			int	level = Integer.parseInt(request.getParameter("level"));
			String tagName = request.getParameter("name");
			if(tagName.equals("null"))
			{
				System.out.println("null값이여");
				tagName = null;
			}
			
			
			con = DBManager.connnect("jw");
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, parentNum);
			pstmt.setString(2, tagName);
			pstmt.setInt(3, level);
			if(pstmt.executeUpdate() == 1)
			{
				System.out.println("성공");
			}
			
			
			
		} catch (Exception e) {
			System.out.println(e);
//			System.out.println("실패이유");
		}finally {
			DBManager.Close(con, pstmt, null);
		}
	}
}
