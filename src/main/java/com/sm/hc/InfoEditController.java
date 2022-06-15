package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InfoEditController")
public class InfoEditController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//본인 확인
		AccountDAO.loginCheck(request);
		AccountDAO.passwordCheck(request);
						
		request.setAttribute("contentPage", "jsp/sm/loginUpdate.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("헤이헤이헤이");
		// 넘겨받은 값들로 수정하는 일
		AccountDAO.updateAccount(request);
		AccountDAO.login(request);
		AccountDAO.loginCheck(request);
						
		// 수정하고 어디로?
		request.setAttribute("contentPage", "jsp/sm/myPage.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

}
