package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FreeRegC")
public class FreeRegC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//글 등록 페이지
		//로그인 여부 확인해서 로그인 되어 있으면 글쓰기 안으로, 아니면 나가기.
		if (AccountDAO.loginCheck2(request)) {//회원
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/free_board_reg.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {//비회원
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/login.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);	
		}
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
		
		//글 등록하는 일
		AccountDAO.regFree(request);
		
		//글 모두 보여줌
		AccountDAO.getAllFree(request);
		AccountDAO.paging(1, request);
		//AccountDAO.getAllFree(request);
		
		//다 보여주고 나면 여기로
		request.setAttribute("contentPage", "jsp/sm/boardFree.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
		
	
	}

}
