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
			String id =null;
			String pw =null;
			
			
			
			
				id="C##jw";
				pw="jw1234";
			
			
			
			return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", id, pw);

			
			
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
		
		
		
		
			id="C##jw";
			pw="jw1234";
		
		
		
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", id, pw);
	}
	
	public static void Close(Connection con, PreparedStatement pstmt, ResultSet rs)
	{
		try {
			if(rs!=null)
			rs.close();
			if(pstmt != null)
			pstmt.close();
			con.close();	
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static void ClosePstmt(PreparedStatement pstmt)
	{
		try {
			if(pstmt != null)
			pstmt.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
