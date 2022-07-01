package com.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {
	

	// DB ���� �۾��� �Ҷ� �Ź� �����ڵ带 �� ���� �۾� �ؿ�
	// �ݺ��Ǵ� �۾��� �ѹ��� �ϱ� ���ؼ� (crud �ݺ��۾�)
	// �װ� AOP ����

		// DB �۾� �ÿ��� ��·�� ���� �ؾߵ�
		public static Connection connect() throws SQLException, ClassNotFoundException {		
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			return DriverManager.getConnection(url, "sm", "sm");
			
			
			
		}
		
		// ������ ������ �ѹ��� �ݱ�
		public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
			try {
				if (rs != null) {
					rs.close();
				}
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	
	//connect("jw");
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
			
			String url ="jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=/Users/choeyongjun/Wallet_DB202204301707";
	        return DriverManager.getConnection(url, "CYJ", "YJ802soldesk");
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
