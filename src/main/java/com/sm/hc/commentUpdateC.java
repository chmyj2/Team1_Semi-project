package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/commentUpdateC")
public class commentUpdateC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//댓글 수정 기능
		AccountDAO.loginCheck(request);
		//댓글수정
		AccountDAO.updateComment(request);
		AccountDAO.getPost(request);
		AccountDAO.getComment(request);
		
		//수정하고 여기로
		request.setAttribute("contentPage", "jsp/sm/free_board_detail.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
