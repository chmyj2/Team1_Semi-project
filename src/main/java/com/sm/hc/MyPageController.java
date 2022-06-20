package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyPageController")
public class MyPageController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//수정하기 전 비번 확인
		AccountDAO.loginCheck(request);
						
		request.setAttribute("contentPage", "jsp/sm/loginContact.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (AccountDAO.passwordCheck(request)) {
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/loginUpdate.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);			
		} else {
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/loginContact.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);					
		}
	}

}
