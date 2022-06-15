package com.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {
	
	// DB 관련 작업을 할때 매번 연결코드를 쓴 이후 작업 해옴
	// 반복되는 작업을 한번만 하기 위해서 (crud 반복작업)
	// 그거 AOP 하자

		// DB 작업 시에는 어쨌든 연결 해야됨
		public static Connection connect() throws SQLException, ClassNotFoundException {		
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			return DriverManager.getConnection(url, "sm", "sm");
		}
		
		// 닫을게 많은데 한번에 닫기
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
	
}
