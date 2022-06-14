package com.sm.hc;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.db.DBManager;


//계정 관련 db 작업 처리하는 M모델
public class AccountDAO {
	
	//세션 유지되면 유지된 상태로 페이지 보여줌
	public static void loginCheck(HttpServletRequest req) {
		HttpSession hs = req.getSession(); //세션 생성
		Account a = (Account) hs.getAttribute("accountInfo");
		
		if (a == null) {
			req.setAttribute("contentPage", "jsp/sm/login.jsp");
		}else {
			req.setAttribute("contentPage", "jsp/sm/loginOK.jsp");
		}
	}

	
	
	public static void login(HttpServletRequest request) {
		
		// 로그인
			
			// 1. 값 받기
			String userId = request.getParameter("user_id"); //userId에 입력한 id를 받아놓음
			String userPw = request.getParameter("user_pw"); //request.getParameter("id") id를 가져옴
			
			// @ 수정 후 로그인 다시 하기 -> 다시 챙겨줘야함. 밑에 있는 updateAccount
			/*
			 * String iddd = (String) request.getAttribute("iddd"); String pwww = (String)
			 * request.getAttribute("pwww"); if (iddd != null) {//값이 들어있을때! userId = iddd;
			 * userPw = pwww; }
			 */		
			
			// 2. db랑 비교 (껍데기 시리즈) 일치하는지 안하는지 비교해야함
			Connection con = null; //연결 객체
			PreparedStatement pstmt = null; //실행 도구
			ResultSet rs = null; //결과
			
			System.out.println("여기까지는?");
			
			try { //에러가 없으면
					String sql = "select * from user_info_tbl where user_id = ?";
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
								a.setUser_level(rs.getString("user_level"));
								
								//세션을 써야 어디서나 사용 가능 -> 정보 수정 후 세션에 값 다시 넣음
								HttpSession hs = request.getSession();//세션 생성
								hs.setAttribute("accountInfo", a);//값 저장
								hs.setMaxInactiveInterval(5*60); //세션시간 설정
								
							} else {
								request.setAttribute("r", "패스워드 오류");
							}
						} else {
							request.setAttribute("r", "존재하지 않는 회원");
						}
				

				
			//에러가 발생하면 catch	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("실패...");
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
			String sql = "insert into account_test values(?,?,?,?,?,?,?,?)";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			// 이미지 lib
			String path = request.getSession().getServletContext().getRealPath("fileFolder");
			System.out.println(path);
			
			// 이미 업로드 기능 처리 됨
			MultipartRequest mr = new MultipartRequest(request, path, 20*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			
			String name = mr.getParameter("name");
			String id = mr.getParameter("id");
			String pw = mr.getParameter("pw1");
			String gender = mr.getParameter("gender"); //w아니면 m -> 남여로 변환? if 문 사용
			
			if (gender.equals('w')) {
				gender = "여";
			} if (gender.equals('m')) {
				gender = "남";
			}
			
			String addr = mr.getParameter("addr");
			String[] interest = mr.getParameterValues("hobby");//배열이니까 배열에 담아
			String txt = mr.getParameter("txt");
			String img = mr.getFilesystemName("img");
			
			String interest2 = ""; //배열 저장할 문자 새로 만듦
			
			
			System.out.println(name);
			System.out.println(id);
			System.out.println(pw);
			System.out.println(gender);
			System.out.println(addr);
			
//			for (String s : interest) {
//				System.out.println(s);
//				interest2 += s + "!"; // 구분자를 넣어서 붙지 않게 - 확실히 구분
//			}
			System.out.println(interest); //배열
			System.out.println(interest2); //여러개 출력
			System.out.println(txt);
			System.out.println(img);
			
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
			pstmt.setString(8, img);
			
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("가입 성공");				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
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
			MultipartRequest mr = new MultipartRequest(request, path, 20*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			
			String name = mr.getParameter("name");
			String id = mr.getParameter("id");
			String pw = mr.getParameter("pw1");
			String gender = mr.getParameter("gender");
			String addr = mr.getParameter("addr");
			String[] interest = mr.getParameterValues("hobby");
			String txt = mr.getParameter("txt");
			String img = mr.getFilesystemName("img");
			
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
			pstmt.setString(8, img);
			
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
		String sql = "update account_test set a_name=?, a_pw=?, a_addr=?, a_interest=?, a_introduce=? where a_id=?";

		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			// 값 받기
			String name = request.getParameter("name");
			String pw = request.getParameter("pw1");
			String addr = request.getParameter("addr");
			String interest = request.getParameter("hobby");
			String[] interest2 = request.getParameterValues("hobby2");//배열이니까 배열에 담아
			String txt = request.getParameter("txt");
			
			String interest3 = ""; //배열 저장할 문자 새로 만듦

			// 세션 쓰던가 넘겨 주던가
			Account aa = (Account)request.getSession().getAttribute("accountInfo");
			String id = aa.getUser_id();
			
			if (interest2 != null) {
				for (String s : interest2) {
					System.out.println(s);
					interest3 += s + "!";
				}
			}else {
				interest3 = interest;
			}
			
			if (txt.isEmpty()) {
				txt = "...";
			}

			//값 입력받기			
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3, addr);
			pstmt.setString(4, interest3);
			pstmt.setString(5, txt);
			pstmt.setString(6, id); //where절에 들어갈 id값
			
			//로그인 다시 시켜 -> 수정된 값 바로 볼 수 있게 -> login에서 받아줘서 값 실려있음
			//업뎃 기능이 수행되면 값이 실려있고 아니면 값이 없을꺼임
			request.setAttribute("iddd", id);
			request.setAttribute("pwww", pw);
			
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공");				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}			

	}
		
	}
	
	
	

	

