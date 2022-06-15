package com.sm.hc;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.util.db.DBManager;


//계정 관련 db 작업 처리하는 M모델
public class AccountDAO {
	
	//세션 유지되면 유지된 상태로 페이지 보여줌
	public static void loginCheck(HttpServletRequest req) {
		HttpSession hs = req.getSession(); //세션 생성
		Account a = (Account) hs.getAttribute("accountInfo");
		
		if (a == null) {
			req.setAttribute("loginPage", "jsp/sm/loginBefore.jsp");
		}else {
			req.setAttribute("loginPage", "jsp/sm/loginAfter.jsp");
		}
	}

	
	
	public static boolean login(HttpServletRequest request) {
		
		// 로그인
			
			// 1. 값 받기
			String userId = request.getParameter("id"); //userId에 입력한 id를 받아놓음
			String userPw = request.getParameter("pw"); //request.getParameter("id") id를 가져옴
			
			// @ 수정 후 로그인 다시 하기 -> 다시 챙겨줘야함. 밑에 있는 updateAccount
			
			 String id_s = (String) request.getAttribute("id_s"); String pw_s = (String)
			 request.getAttribute("pw_s"); if (id_s != null) {//값이 들어있을때! userId = id_s;
			 userPw = pw_s; }
			 	
			
			// 2. db랑 비교 (껍데기 시리즈) 일치하는지 안하는지 비교해야함
			Connection con = null; //연결 객체
			PreparedStatement pstmt = null; //실행 도구
			ResultSet rs = null; //결과
			
			
			boolean isLogin = false;
			
			try { //에러가 없으면
					String sql = "select * from user_info_tbl where user_id=?";
					con = DBManager.connect();
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, userId);
					
					rs = pstmt.executeQuery();
					if (rs.next()) {					
						if (userPw.equals(rs.getString("user_pw"))) {
								request.setAttribute("r", "로그인 성공");
								
								Account a = new Account();
								a.setUser_id(rs.getString("user_id"));
								a.setUser_pw(rs.getString("user_pw"));
								a.setUser_name(rs.getString("user_name"));
								a.setUser_gender(rs.getString("user_gender"));
								a.setUser_addr(rs.getString("user_addr"));
								a.setUser_phoneNumber(rs.getString("user_phoneNumber"));
								a.setUser_age(rs.getString("user_age"));
								
								//세션을 써야 어디서나 사용 가능 -> 정보 수정 후 세션에 값 다시 넣음
								HttpSession hs = request.getSession();//세션 생성
								hs.setAttribute("accountInfo", a);//값 저장
								hs.setMaxInactiveInterval(5*60); //세션시간 설정
								
								isLogin = true;
								
							} else {
								request.setAttribute("r", "패스워드 오류");
							}
						} else {
							request.setAttribute("r", "존재하지 않는 회원");
						}

				return isLogin;
						
			//에러가 발생하면 catch	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("실패...");
				return isLogin;
			} finally {
				com.util.db.DBManager.close(con, pstmt, rs);
			}

		
		
		
	}



	public static void logOut(HttpServletRequest request) {

		// 로그아웃 하는 일
		// 세션을 죽여야 함.
		
		HttpSession hs = request.getSession();
		hs.getAttribute("accountInfo"); //세션을 얻어오려면?
//1.		hs.setAttribute("accountInfo", null); //null 값을 넣어서 accountInfo(세션)을 죽임
//2.		hs.removeAttribute("accountInfo"); //지정이 가능
		hs.invalidate(); //다 지움(지정 불가)
//4.		hs.setMaxInactiveInterval(0); //이거는 안됨!!!
		
		// 애초에 만들어진적이 없을때(로그인이 안됐을때), 설정한 시간이 만료되면 -> 2가지 경우가 있음
		
		
		
		
	}




	//가입하는 일
	public static void regAccount(HttpServletRequest request) {
		// 껍데기
		Connection con = null; //연결 객체
		PreparedStatement pstmt = null; //실행 도구
		ResultSet rs = null;
		
		try {
			request.setCharacterEncoding("utf-8");
			String sql = "insert into user_info_tbl values(?,?,?,?,?,?,?)";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw1");
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");		
			String addr = request.getParameter("addr");
			String phoneNum = request.getParameter("phoneNum");
			int age1 = Integer.parseInt(request.getParameter("birth"));
			
			int age2 = 2022 - age1;
			
			System.out.println(id);
			System.out.println(pw);
			System.out.println(name);
			System.out.println(gender);
			System.out.println(addr);
			System.out.println(phoneNum);
			System.out.println(age1);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, gender);
			pstmt.setString(5, addr);
			pstmt.setString(6, phoneNum);
			pstmt.setInt(7, age2);
			
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("가입 성공");				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("실패");
		}finally {
			DBManager.close(con, pstmt, rs);
		}			
	}

	
	


	// 회원 정보 가져오기
	public static void getAccount(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from account_test where a_id=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String path = request.getSession().getServletContext().getRealPath("fileFolder");
			System.out.println(path);
			
			// 이미 업로드 기능 처리 됨
			
			String name = request.getParameter("name");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw1");
			String gender = request.getParameter("gender");
			String addr = request.getParameter("addr");
			String[] interest = request.getParameterValues("hobby");
			String txt = request.getParameter("txt");
			
			String interest2 = "";
			
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, pw);
			pstmt.setString(4, gender);
			pstmt.setString(5, addr);
			
			
			if (txt.isEmpty()) {
				txt = "...";
			}
				
			if (interest != null) {
				for (String s : interest) {
					System.out.println(s);
					interest2 += s + "!";
				}
			}else {
				interest2 = "관심사 없음";
			}
			
			pstmt.setString(6, interest2);
			pstmt.setString(7, txt);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}


	//수정하는 일
	public static void updateAccount(HttpServletRequest request) {
		
		Connection con = null; //연결 객체
		PreparedStatement pstmt = null; //실행 도구
		String sql = "update user_info_tbl set user_pw=?, user_addr=?, user_phoneNumber=?, user_age=? where user_id=?";

		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			// 값 받기
			String pw = request.getParameter("pw1");
			String addr = request.getParameter("addr");
			String phoneNum = request.getParameter("phoneNum");
			int age1 = Integer.parseInt(request.getParameter("birth"));
			String id = request.getParameter("id");

			// 세션 쓰던가 넘겨 주던가
			Account aa = (Account)request.getSession().getAttribute("accountInfo");
			String id1 = aa.getUser_id();			
			
			//값 입력받기
			pstmt.setString(1, pw);
			pstmt.setString(2, addr);
			pstmt.setString(3, phoneNum);
			pstmt.setInt(4, age1);
			pstmt.setString(5, id1);			
			
			//로그인 다시 시켜 -> 수정된 값 바로 볼 수 있게 -> login에서 받아줘서 값 실려있음
			//업뎃 기능이 수행되면 값이 실려있고 아니면 값이 없을꺼임
			request.setAttribute("id_s", id);
			request.setAttribute("pw_s", pw);
			
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공");				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}			

	}



	public static void passwordCheck(HttpServletRequest request) {
	
		String pwContact = request.getParameter("pwContact");
	
		HttpSession hs = request.getSession();
		Account aa = (Account)request.getSession().getAttribute("accountInfo");
		String pw = aa.getUser_pw();
				
		if (pwContact.equals(pw)) {
			System.out.println("성공이야????");
			request.setAttribute("contentPage", "jsp/sm/loginUpdate.jsp");
		}else {
			request.setAttribute("contentPage", "jsp/sm/loginContact.jsp");
		}
		
		
	}
		
	
	
	
	}
	
	
	

	

