package com.semi.bj.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginC")
public class LoginC extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if (AccountDAO.loginCheck(request)) {
			AccountDAO.logout(request);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("jsp/bj/login/login.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		AccountDAO.login(request, response);
		AccountDAO.loginCheck(request);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
