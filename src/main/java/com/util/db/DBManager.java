package com.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {
	
	//connect("¿Ã¥œº»");
	public static Connection connnect(String who) throws SQLException, ClassNotFoundException
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String id =null;
		String pw =null;
		
		
		
		if(who.equals("jw"))
		{
			id="C##jw";
			pw="jw1234";
		}
		else if(who.equals("sm"))
		{
			id="sm";
			pw="sm";
		}
		else if(who.equals("yj"))
		{
			
			return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", id, pw);
		}
		
		
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", id, pw);
	}
	
	public static void Close(Connection con, PreparedStatement pstmt, ResultSet rs)
	{
		try {
			if(rs!=null)
			rs.close();
			pstmt.close();
			con.close();	
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
