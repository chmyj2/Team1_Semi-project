package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AccountUpC")
public class AccountUpC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//해당 회원 정보 가져오기
		AccountDAO.loginCheck(request);
		
		request.setAttribute("contentPage", "account/update.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 넘겨받은 값들로 수정하는 일
		AccountDAO.updateAccount(request);
		AccountDAO.login(request);
		AccountDAO.loginCheck(request);
		
		// 수정하고 어디로?
		request.setAttribute("contentPage", "account/info.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

}
