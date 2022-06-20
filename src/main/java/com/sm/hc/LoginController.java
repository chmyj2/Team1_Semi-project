package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.hc.AccountDAO;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		  // 로그아웃 하는 일
			AccountDAO.logOut(request);
		  
		  // 일 시킨 다음에 어디로? 
		  AccountDAO.loginCheck(request);
		  request.setAttribute("contentPage", "home.jsp");
		  request.getRequestDispatcher("index.jsp").forward(request, response);
		 
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//로그인
		if (AccountDAO.login(request)) {
			//일 시킨 다음에 어디로?
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "home.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);		
		} else {
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/login.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);				
		}
		
		
	
	}
}
