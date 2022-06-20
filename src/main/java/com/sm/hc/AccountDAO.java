package com.sm.hc;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
		
		if (a == null) {//로그인 안되어 있으면
			req.setAttribute("loginPage", "jsp/sm/loginBefore.jsp");
		}else {//로그인 되어 있으면
			req.setAttribute("loginPage", "jsp/sm/loginAfter.jsp");
		}
	}

	
	//로그인 되어있는지 확인 (게시판 접근)
	public static boolean loginCheck2(HttpServletRequest req) {
		HttpSession hs = req.getSession(); //세션 생성
		Account a = (Account) hs.getAttribute("accountInfo");
		
		boolean isCorrect = false;
		
		if (a == null) {			
		}else {
			isCorrect = true;
		}
		return isCorrect;
		
	}
	
	
	public static boolean login(HttpServletRequest request) {
		
		// 로그인
			
			// 1. 값 받기
			String userId = request.getParameter("id"); //userId에 입력한 id를 받아놓음
			String userPw = request.getParameter("pw"); //request.getParameter("id") id를 가져옴
			
			// @ 수정 후 로그인 다시 하기 -> 다시 챙겨줘야함. 밑에 있는 updateAccount			
			 String id_r = (String) request.getAttribute("id_r");
			 String pw_r = (String) request.getAttribute("pw_r");
			 if (id_r != null) {
				 userId = id_r;
				 userPw = pw_r; }
			 	
			
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
								hs.setMaxInactiveInterval(10*60); //세션시간 설정
								
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
			
			HttpSession hs = request.getSession();
			Account a = (Account) hs.getAttribute("accountInfo");			
			
			hs.setAttribute("accountInfo", a);//값 저장
			hs.setMaxInactiveInterval(10*60); //세션시간 설정
			
			
			
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
		String sql = "update user_info_tbl set user_pw=?, user_addr=?, user_phoneNumber=? where user_id=?";

		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			// 값 받기
			String pw3 = request.getParameter("pw3");
			String addr = request.getParameter("addr");
			String phoneNum = request.getParameter("phoneNum");

			// 세션 쓰던가 넘겨 주던가
			Account a = (Account)request.getSession().getAttribute("accountInfo");
			String id = a.getUser_id();			
			
			//값 입력받기
			pstmt.setString(1, pw3);
			pstmt.setString(2, addr);
			pstmt.setString(3, phoneNum);
			pstmt.setString(4, id);			
			
			//로그인 다시 시켜 -> 수정된 값 바로 볼 수 있게 -> login에서 받아줘서 값 실려있음
			//업뎃 기능이 수행되면 값이 실려있고 아니면 값이 없을꺼임
			request.setAttribute("id_r", id);
			request.setAttribute("pw_r", pw3);
			
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공");				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}			

	}


	//정보 수정 전 비번 체크
	public static boolean passwordCheck(HttpServletRequest request) {
	
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");
		String pwContact = request.getParameter("pwContact");
		
		boolean isPwCheck = false;		
		
		if (pwContact.equals(a.getUser_pw())) {
			isPwCheck = true;
		}	
			return isPwCheck;
		
	}


	// 회원 탈퇴
	public static void DeleteAccount(HttpServletRequest request) {
		
		//껍데기
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");
		
		try {
			String sql = "delete user_info_tbl where user_id=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, a.getUser_id());		
			
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "삭제 성공!");
			}
			
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("r", "서버 오류...");
			} finally {
				DBManager.close(con, pstmt, null);
			}
			
			
		
		
		
		
	}


	//아이디 찾기
	public static boolean searchId(HttpServletRequest request) {	
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		boolean isCorrectId = false;
		
		try {
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String phoneNumber = request.getParameter("phoneNumber");
			
			System.out.println(name);
			
			String sql = "select user_id from user_info_tbl where user_name=? and user_phoneNumber=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			
			pstmt.setString(1, name);
			pstmt.setString(2, phoneNumber);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String id = rs.getString("user_id");
				request.setAttribute("searchId", id);
				isCorrectId = true;
			}
			
			return isCorrectId;
			
		} catch (Exception e) {
			e.printStackTrace();
			return isCorrectId;
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
	}


	//비번 찾기
	public static boolean searchPw(HttpServletRequest request) {
		String id = request.getParameter("id");
		String phoneNumber = request.getParameter("phoneNumber");
		
		System.out.println(id);
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		boolean isCorrectId = false;
		
		try {
			request.setCharacterEncoding("utf-8");
			String sql = "select user_pw from user_info_tbl where user_id=? and user_phoneNumber=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			
			pstmt.setString(1, id);
			pstmt.setString(2, phoneNumber);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String pw = rs.getString("user_pw");
				request.setAttribute("searchPw", pw);
				isCorrectId = true;
			}
			
			return isCorrectId;
			
		} catch (Exception e) {
			e.printStackTrace();
			return isCorrectId;
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}


	//자유게시판 글 등록
	public static void regFree(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		Account a = (Account)request.getSession().getAttribute("accountInfo");
		String id = a.getUser_id();	
		
		
		try {
			request.setCharacterEncoding("utf-8"); //글자 깨짐 방지
			String sql = "insert into board_tbl values(board_tbl_seq.nextval,?,?,?,?,sysdate)";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			//파일 업로드
			String saveDirectory = request.getServletContext().getRealPath("imgfile");
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 31457280, "utf-8", new DefaultFileRenamePolicy());

			//값 받기 (타이틀,텍스트,이미지)
			String title = mr.getParameter("title");
			String txt = mr.getParameter("txt");
			String file = mr.getFilesystemName("file");
			
			System.out.println(id);
			System.out.println(title);
			System.out.println(txt);
			System.out.println(file);		
			
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, txt);
			pstmt.setString(4, file);
						
			//실행 해보기
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "등록 성공!");
			}
						
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("r", "서버 오류...");
			} finally {
				DBManager.close(con, pstmt, null);
			}
		
		
	}


	//전체 조회(다 보여줌)
	public static void getAllFree(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
				
		try {			
			String sql = "select * from board_tbl";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);			
			rs = pstmt.executeQuery();
					
			ArrayList<FreeBoard> frees = new ArrayList<FreeBoard>();
			FreeBoard f = null;
			
			while (rs.next()) {	//한줄씩 내려가면서 반복			
				f = new FreeBoard();
				f.setBoard_num(rs.getString("board_num"));
				f.setBoard_title(rs.getString("board_title"));
				f.setBoard_txt(rs.getString("board_txt"));
				f.setBoard_img(rs.getString("board_img"));
				f.setBoard_date(rs.getDate("board_date"));
				f.setUser_id(rs.getString("user_id"));
			
				frees.add(f);
			}
			
			request.setAttribute("frees",frees);
								
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(con, pstmt, rs);
			}
		
	}

	//게시글 정보 얻기
	public static void getPost(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {			
			String sql = "select * from board_tbl where board_num=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);			
			pstmt.setInt(1, Integer.parseInt(request.getParameter("No")));
			rs = pstmt.executeQuery();
			
			FreeBoard f = null;
			while (rs.next()) {	//한줄씩 내려가면서 반복			
				f = new FreeBoard();
				f.setBoard_num(rs.getString("board_num"));
				f.setBoard_title(rs.getString("board_title"));
				f.setBoard_txt(rs.getString("board_txt"));
				f.setBoard_img(rs.getString("board_img"));
				f.setBoard_date(rs.getDate("board_date"));
				f.setUser_id(rs.getString("user_id"));

				request.setAttribute("frees",f);
			}

								
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(con, pstmt, rs);
			}
		
	}

	//게시글 수정
	public static String updatePost(HttpServletRequest request) {
		
		Connection con = null; //연결 객체
		PreparedStatement pstmt = null; //실행 도구
		String sql = "update board_tbl set board_title=?, board_txt=?, board_img=? where board_num=?";

		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			//파일 업로드
			String saveDirectory = request.getServletContext().getRealPath("imgfile");
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 31457280, "utf-8", new DefaultFileRenamePolicy());
			
			// 값 받기
			String pretitle = mr.getParameter("pretitle"); //수정전
			String title = mr.getParameter("title");
			String pretxt = mr.getParameter("pretxt");
			String txt = mr.getParameter("txt");
			String prefile = mr.getParameter("prefile");
			String file = mr.getFilesystemName("file");		
			
			if (title.equals("")) {
				title = pretitle;
			}
			
			if (txt.equals("")) {
				txt = pretxt;
			}
			
			if (file == null) {
				file = prefile;
			}
			
			if (!prefile.equals("") && file != null) {
				File f = new File(saveDirectory+"/"+prefile);
				f.delete();
			}
			
			int number = Integer.parseInt(mr.getParameter("number"));
			
			
			//값 입력받기
			pstmt.setString(1, title);
			pstmt.setString(2, txt);
			pstmt.setString(3, file);
			pstmt.setInt(4, number);
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공");		
				return mr.getParameter("number");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			DBManager.close(con, pstmt, null);
		}
		return null;		
		
	}

	//게시글 삭제
	public static void deletePost(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "delete board_tbl where board_num=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			// ?를 채우려면 no 값을 하나 받아와야됨.
			int no = Integer.parseInt(request.getParameter("No"));
			
			pstmt.setInt(1, no);
			
			//실행 해보기
			if(pstmt.executeUpdate() == 1) {
				System.out.println("삭제 성공");
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("삭제 실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	
}
	

	

