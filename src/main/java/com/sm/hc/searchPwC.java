package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchPwC")
public class searchPwC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//비번 찾기
		AccountDAO.loginCheck(request);
				
		request.setAttribute("contentPage", "jsp/sm/searchPw.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//비번 찾기
		if(AccountDAO.searchPw(request)) {
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/searchPwResult.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else {
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/searchPw.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	
	
	
	}

}
