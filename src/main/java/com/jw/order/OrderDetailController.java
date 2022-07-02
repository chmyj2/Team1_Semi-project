package com.jw.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jw.DbUtil.OrderDBManager;
import com.sm.hc.AccountDAO;

@WebServlet("/OrderDetailController")
public class OrderDetailController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (!AccountDAO.loginCheck2(request)) {//회원
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "jsp/sm/login.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);		
		}
		AccountDAO.loginCheck(request);
		OrderDBManager.getAllOrder(request);
		System.out.println("불내버릴꺼야");
		request.setAttribute("contentPage", "jsp/jw/OrderDetail.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
