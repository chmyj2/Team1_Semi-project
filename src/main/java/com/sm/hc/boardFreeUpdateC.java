package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/boardFreeUpdateC")
public class boardFreeUpdateC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//게시글 수정 페이지 보여줘 (원래 값까지)
		AccountDAO.loginCheck(request);
		AccountDAO.getPost(request);
		request.setAttribute("contentPage", "jsp/sm/free_board_update.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//게시글 수정하는 일
		AccountDAO.loginCheck(request);
		

		
		response.sendRedirect("boardFreeDetailC?No="+AccountDAO.updatePost(request));
		
		
	
	}

}
