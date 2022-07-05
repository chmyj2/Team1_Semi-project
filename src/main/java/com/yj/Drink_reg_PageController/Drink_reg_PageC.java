package com.yj.Drink_reg_PageController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.hc.AccountDAO;
import com.yj.drink_info_CRUD.DrinkDAO;

@WebServlet("/Drink_reg_PageC")
public class Drink_reg_PageC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		int p = Integer.parseInt(request.getParameter("p"));
		
		
		AccountDAO.loginCheck(request);
		DrinkDAO.getDdao().Get_All_drink_Info(request);
		DrinkDAO.getDdao().paging(p, request);

        request.setAttribute("contentPage", "jsp/yj/drink_Info_reg.jsp");
        request.getRequestDispatcher("index.jsp").forward(request, response);
		
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
