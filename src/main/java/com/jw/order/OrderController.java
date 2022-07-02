package com.jw.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jw.DbUtil.OrderDBManager;
import com.sm.hc.AccountDAO;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (!AccountDAO.loginCheck2(request)) {//È¸¿ø
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/login.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);		
		}
		AccountDAO.loginCheck(request);
		OrderDBManager.orderMidPoint(request);
		OrderDBManager.getUser(request);
		request.setAttribute("contentPage", "jsp/jw/OrderPage.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
