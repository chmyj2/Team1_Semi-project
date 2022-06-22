package com.jw.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jw.DbUtil.CartDBManager;
import com.jw.DbUtil.CategoryDBManager;
import com.sm.hc.AccountDAO;

@WebServlet("/CategoryController")
public class CategoryController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		CategoryDBManager.printAllTag();
		CategoryDBManager.getAllTag(request);
		request.getRequestDispatcher("jsp/jw/PopTagAdder.jsp").forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}