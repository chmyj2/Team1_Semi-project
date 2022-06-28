package com.yj.star_point;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.If;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yj.drink_info_CRUD.Drink;
import com.util.db.DBManager;

public class StarDao {

	public static void star_reg(HttpServletRequest request) {

		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
		con = DBManager.connnect("yj");
		String sql = "insert into star_point_tbl values(star_point_tbl_seq.nextval,?,?,?)";
		pstmt = con.prepareStatement(sql);
		
		
		
		
		String cocktail_num = request.getParameter("num");
		String userId = request.getParameter("user_id");
		int rating = Integer.parseInt(request.getParameter("rating"));

								
			

			System.out.println(cocktail_num);			
			System.out.println(userId);
			System.out.println(rating);
			
			
			
			
			
			
			pstmt.setString(1, cocktail_num);
			pstmt.setString(2, userId);
			pstmt.setInt(3, rating);
			
			
			
			
			
			
			if(pstmt.executeUpdate() == 1){
				System.out.println("등록 성공");
			}
			
			
			
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.Close(con, pstmt, null);
			}
			
		
			
		}

	public static void star_point_cal(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {			
			String sql = "SELECT AVG(score) FROM star_point_tbl where product_num = ?";
			con = DBManager.connnect("yj");
			pstmt = con.prepareStatement(sql);
			
			String num = request.getParameter("num");
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			
			
			Star_point st = null;
			
			if (rs.next()) {
				st = new Star_point();
				st.setScore(rs.getDouble("AVG(SCORE)"));
				
				if(rs.getDouble("AVG(SCORE)") < 0.5){
					
					request.setAttribute("star","☆☆☆☆☆" );
				} else if (rs.getDouble("AVG(SCORE)") >= 0.5 && rs.getDouble("AVG(SCORE)") < 1.5) {
					request.setAttribute("star","★☆☆☆☆" );
				}	else if (rs.getDouble("AVG(SCORE)") >= 1.5 && rs.getDouble("AVG(SCORE)") < 2.5) {
					request.setAttribute("star","★★☆☆☆" );
				}	else if (rs.getDouble("AVG(SCORE)") >= 2.5 && rs.getDouble("AVG(SCORE)") < 3.5) {
					request.setAttribute("star","★★★☆☆" );
				}	else if (rs.getDouble("AVG(SCORE)") >= 3.5 && rs.getDouble("AVG(SCORE)") < 4.5) {
					request.setAttribute("star","★★★★☆" );
				}	else if (rs.getDouble("AVG(SCORE)") >= 4.5) {
					request.setAttribute("star","★★★★★" );
				}
				
				
			
				request.setAttribute("starpoint",st);

			
			
				}
			
			
						
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.Close(con, pstmt, rs);
		}
		
	}



}
