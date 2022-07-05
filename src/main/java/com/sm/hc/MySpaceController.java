package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MySpaceController")
public class MySpaceController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//마이스페이스 - 내글,내댓글 보여주는 곳
		AccountDAO.loginCheck(request);
		
		AccountDAO.getMyPost(request);
		AccountDAO.getMyComments(request);
		
		request.setAttribute("contentPage", "jsp/sm/mySpace.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
