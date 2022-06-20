package com.yj.star_point;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yj.drink_info_CRUD.DrinkDAO;

@WebServlet("/Star_regController")
public class Star_regController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	// 별점 db에 등록하는일
		StarDao.star_reg(request);
		DrinkDAO.getDrinkInfo(request);
		StarDao.star_point_cal(request);
		request.setAttribute("contentPage", "jsp/yj/drink_info_detail.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
