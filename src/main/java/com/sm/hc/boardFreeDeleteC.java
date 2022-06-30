package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/boardFreeDeleteC")
public class boardFreeDeleteC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//게시글 삭제하는 일
		AccountDAO.loginCheck(request);
		AccountDAO.deletePost(request);
		AccountDAO.getAllFree(request);
		AccountDAO.paging(1, request);
		
		
		//게시글 불러온 다음 여기로~!
		request.setAttribute("contentPage", "jsp/sm/boardFree.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
