package com.jw.DbUtil;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.hc.Account;
import com.sm.hc.AccountDAO;

//내 전용 DB유틸 관리자
public class jwDBManager {
	public static String getUserID(HttpServletRequest request)
	{
		Account a = (Account)request.getSession().getAttribute("accountInfo");
		String id = a.getUser_id();
		return id;
	}
	
}
