package com.yj.drink_info_regController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yj.drink_info_regController.DrinkDAO;

@WebServlet("/drink_Info_Update_Controller")
public class drink_Info_Update_Controller extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			DrinkDAO.getDrinkInfo(request);
			request.setAttribute("contentPage", "jsp/yj/drink_info_update.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
		
	}
	
	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		DrinkDAO.drink_info_Update(request);
		DrinkDAO.Get_All_drink_Info(request);
		request.setAttribute("contentPage", "jsp/yj/drink_Info_reg.jsp");
	
	
	}

}
