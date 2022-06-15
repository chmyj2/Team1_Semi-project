package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegAccountC")
public class RegAccountC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/sm_reg.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			//가입하는 일 -insert
			//끝나고 어디로 가는지
			AccountDAO.regAccount(request);
			AccountDAO.loginCheck(request);
			
			request.setAttribute("contentPage", "jsp/sm/regOut.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
