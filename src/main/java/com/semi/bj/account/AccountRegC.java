package com.semi.bj.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AccountRegC")
public class AccountRegC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if (request.getParameter("user_id") != null) {
			AccountDAO.duplicateCheck(request, response);
			
		} else {
			AccountDAO.loginCheck(request);
			request.getRequestDispatcher("jsp/bj/login/signupPage2.jsp").forward(request, response);
		}
	
//		if (request.getParameter("actionType").equals("isDuplicated")) {
//		} else {
//		}
//		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
		AccountDAO.regAccount(request);
		AccountDAO.loginCheck(request);
		response.sendRedirect("HC");
	}

}
