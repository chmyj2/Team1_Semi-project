package com.yj.drink_info_regController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/drink_Info_regController")
public class drink_Info_regController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setAttribute("contentPage", "jsp/yj/drink_Info_reg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		DrinkDAO.drink_Info_Update(request);
		request.setAttribute("contentPage", "jsp/yj/drink_Info_reg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
	
	
	}

}
