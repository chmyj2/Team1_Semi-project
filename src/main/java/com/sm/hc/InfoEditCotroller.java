package com.sm.hc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.hc.AccountDAO;

@WebServlet("/InfoEditCotroller")
public class InfoEditCotroller extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//�ش� ȸ�� ���� ��������
		AccountDAO.loginCheck(request);
				
		request.setAttribute("contentPage", "account/update.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
				
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// �Ѱܹ��� ����� �����ϴ� ��
		AccountDAO.updateAccount(request);
		AccountDAO.login(request);
		AccountDAO.loginCheck(request);
				
		// �����ϰ� ����?
		request.setAttribute("contentPage", "jsp/sm/myPage.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
			
	
	
	}

}