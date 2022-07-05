package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/boardFreeDetailC")
public class boardFreeDetailC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//클릭한 게시글 정보 얻기
		AccountDAO.loginCheck(request);
		AccountDAO.getPost(request);
		AccountDAO.getComment(request);
		
		//정보 얻고 여기로
		request.setAttribute("contentPage", "jsp/sm/free_board_detail.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
