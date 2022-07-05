package com.yj.makecookie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.hc.AccountDAO;
import com.yj.drink_info_CRUD.DrinkDAO;

@WebServlet("/MakeCookieC")
public class MakeCookieC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DrinkDAO.makecookie(request,response);
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "home.jsp");
		response.sendRedirect("index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
