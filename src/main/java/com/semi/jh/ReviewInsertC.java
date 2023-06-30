package com.semi.jh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.bj.account.AccountDAO;

@WebServlet("/ReviewInsertC")
public class ReviewInsertC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewDao.getReviewdao().insert(request);
		ReviewDao.getReviewdao().paging(1,request);
		ReviewDao.getReviewdao().select(request);
		AccountDAO.getAccountdao().loginCheck(request);
		request.setAttribute("contentPage", "jsp/jh/review.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
