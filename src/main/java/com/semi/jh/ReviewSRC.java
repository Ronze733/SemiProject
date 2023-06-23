package com.semi.jh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.bj.account.AccountDAO;

@WebServlet("/ReviewSRC")
public class ReviewSRC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		ReviewDao.getReviewdao().selectlikes(request);
		int p = Integer.parseInt(request.getParameter("p"));
		ReviewDao.getReviewdao().paging(p,request);
		request.setAttribute("contentPage", "jsp/jh/reviewStar.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
