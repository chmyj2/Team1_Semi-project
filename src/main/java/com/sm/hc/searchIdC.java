package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.hc.AccountDAO;

@WebServlet("/searchIdC")
public class searchIdC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//아이디 찾기
		AccountDAO.loginCheck(request);
		
		request.setAttribute("contentPage", "jsp/sm/searchId.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//아이디 찾기
		if (AccountDAO.searchId(request)) {
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/searchIdResult.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/searchId.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	
	}

}
