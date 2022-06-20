<<<<<<<< HEAD:src/main/java/com/yj/drink_info_CRUD/Drink_Info_DeleteController.java
package com.yj.drink_info_CRUD;
========
package com.sm.hc;
>>>>>>>> origin/WorkBranch/sm:src/main/java/com/sm/hc/boardFreeUpdateC.java

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<<< HEAD:src/main/java/com/yj/drink_info_CRUD/Drink_Info_DeleteController.java

@WebServlet("/Drink_Info_DeleteController")
public class Drink_Info_DeleteController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�궘�젣�븯�뒗 �씪
		DrinkDAO.delete_drink_info(request);
		
		DrinkDAO.Get_All_drink_Info(request);
		
		
		request.setAttribute("contentPage", "jsp/yj/drink_Info_reg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
========
@WebServlet("/boardFreeUpdateC")
public class boardFreeUpdateC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//게시글 수정 페이지 보여줘 (원래 값까지)
		AccountDAO.loginCheck(request);
		AccountDAO.getPost(request);
		request.setAttribute("contentPage", "jsp/sm/free_board_update.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//게시글 수정하는 일
		AccountDAO.loginCheck(request);
		

		
		response.sendRedirect("boardFreeDetailC?No="+AccountDAO.updatePost(request));
		
		
	
>>>>>>>> origin/WorkBranch/sm:src/main/java/com/sm/hc/boardFreeUpdateC.javass
	}

}
