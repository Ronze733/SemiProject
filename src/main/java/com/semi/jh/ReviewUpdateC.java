package com.semi.jh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.bj.account.AccountDAO;

@WebServlet("/ReviewUpdateC")
public class ReviewUpdateC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewDao.getReviewdao().select(request);
		AccountDAO.loginCheck(request);
		ReviewDao.getReviewdao().selectid(request);
		ReviewDao.getReviewdao().makebody(request);
		request.setAttribute("contentPage", "jsp/jh/reviewUpdate.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewDao.getReviewdao().select(request);
		AccountDAO.loginCheck(request);	
		ReviewDao.getReviewdao().update(request);
		ReviewDao.getReviewdao().paging(1,request);
		request.setAttribute("contentPage", "jsp/jh/review.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
