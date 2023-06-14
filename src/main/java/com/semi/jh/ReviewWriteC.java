package com.semi.jh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReviewWriteC")
public class ReviewWriteC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("LoginPage", "jsp/bj/login/navbarSignup.jsp");
		request.setAttribute("contentPage", "jsp/jh/reviewwrite.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		ReviewDao.select(request);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
