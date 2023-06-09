package com.semi.sh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.bj.account.AccountDAO;

@WebServlet("/QnADetailC")
public class QnADetailC extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnADAO.getQnADAO().getQnA(request);
		AccountDAO.getAccountdao().loginCheck(request);
		QnADAO.getQnADAO().makebody(request);
		QnADAO.getQnADAO().makeanswer(request);
		request.setAttribute("contentPage", "jsp/sh/QnA_detail.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
