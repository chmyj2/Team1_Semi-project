package com.yj.drink_info_CRUD;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD:src/main/java/com/yj/drink_info_CRUD/Drink_Info_DeleteController.java

@WebServlet("/Drink_Info_DeleteController")
public class Drink_Info_DeleteController extends HttpServlet {
=======
<<<<<<< HEAD


=======
>>>>>>> yjyj
@WebServlet("/drink_Info_regController")
public class drink_Info_regController extends HttpServlet {
>>>>>>> WorkBranch/Develop:src/main/java/com/yj/drink_info_regController/drink_Info_regController.java
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//삭제하는 일
		DrinkDAO.delete_drink_info(request);
		
		DrinkDAO.Get_All_drink_Info(request);
		
		
		request.setAttribute("contentPage", "jsp/yj/drink_Info_reg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
