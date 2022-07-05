package com.yj.drink_info_CRUD;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.hc.AccountDAO;
import com.util.db.YJDBEXport;

@WebServlet("/ourCollectionController")
public class ourCollectionController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//YJDBEXport.DBReader("/Users/choeyongjun/EclipseWorkspace/semiWorkSpace/bestteam1/","star_point_tbl", 4);
		AccountDAO.loginCheck(request);
		
		DrinkDAO.getDdao().Get_All_drink_Info(request);
		request.setAttribute("contentPage", "jsp/yj/ourCollection.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	
	}

}
