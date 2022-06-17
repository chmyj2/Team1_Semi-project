package com.jw.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jw.DbUtil.ProductBean;
import com.jw.DbUtil.ProductDBManager;

@WebServlet("/ShoppingController")
public class ShoppingController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String temp = "<a href=\"ProductRegController\"><button>상품 추가</button></a>";
		request.setAttribute("abc", temp);
		request.setAttribute("contentPage", "jsp/jw/shop.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
}
