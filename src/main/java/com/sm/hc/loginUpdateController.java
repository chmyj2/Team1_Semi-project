package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.hc.AccountDAO;

@WebServlet("/loginUpdateController")
public class loginUpdateController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//해당 회원 정보 가져오기
		AccountDAO.loginCheck(request);
				
		request.setAttribute("contentPage", "jsp/sm/loginUpdate.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 넘겨받은 값들로 수정하는 일
		AccountDAO.updateAccount(request);
		AccountDAO.login(request);
		AccountDAO.loginCheck(request);
				
		// 수정하고 어디로?
		request.setAttribute("contentPage", "jsp/sm/myPage.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
			
	}

}
