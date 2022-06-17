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
	
		//글 등록하는 페이지
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "jsp/sm/free_board_reg.jsp");
	//	request.setAttribute("loginPage", "jsp/sm/loginBefore.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//글 등록하는 일
		AccountDAO.regFree(request);
		
		//글 모두 보여줌
		AccountDAO.getAllFree(request);
		System.out.println("3");
		
		//다 보여주고 나면 여기로
		request.setAttribute("contentPage", "jsp/sm/boardFree.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		System.out.println("4");
		
		
		
		
	
	}

}
