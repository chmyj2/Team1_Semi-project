package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InfoAccountC")
public class InfoAccountC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 체크
		// 컨텐트 페이지 세팅
		
		AccountDAO.loginCheck(request);

		
		
		
		// 일 끝나면?
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	
	}
//	二쇱꽍
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
