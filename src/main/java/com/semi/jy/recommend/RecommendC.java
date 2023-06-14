package com.semi.jy.recommend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RecommendC")
public class RecommendC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PlaceDAO.recommendPlace(request);
		request.setAttribute("LoginPage", "jsp/bj/login/navbarSignup.jsp");
		request.setAttribute("contentPage", "./jsp/jy/recommend/recommend.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

}
