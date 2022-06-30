package com.yj.drink_info_CRUD;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.hc.AccountDAO;

@WebServlet("/Search_drinkController")
public class Search_drinkController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		
		DrinkDAO m = DrinkDAO.getDdao();
		m.searched_drink(request);
		
		
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		DrinkDAO m = DrinkDAO.getDdao();
		m.searched_drink2(request);
		m.paging(1, request);
		
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	
	
	}

}
