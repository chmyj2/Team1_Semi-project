package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CommentMainC")
public class CommentMainC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 코멘트 작성 페이지
		// 로그인 여부 확인
		
		if (AccountDAO.loginCheck2(request)) {
			//회원
			AccountDAO.loginCheck(request);
			//댓글 등록
			AccountDAO.regComment(request);
			AccountDAO.getPost(request);
			//댓글 가져오기
			AccountDAO.getComment(request);
			
			//바로 보여줌
			request.setAttribute("contentPage", "jsp/sm/free_board_detail.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {//비회원
			AccountDAO.loginCheck(request); //얼럿창? 암튼 로그인하라는 메시지
			request.setAttribute("contentPage", "jsp/sm/login.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response); }
		
	}

}
