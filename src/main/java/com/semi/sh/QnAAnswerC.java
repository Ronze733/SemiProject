package com.semi.sh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.bj.account.AccountDAO;

@WebServlet("/QnAAnswerC")
public class QnAAnswerC extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.getAccountdao().loginCheck(request);
		QnADAO.getQnADAO().getQnA(request);
		QnADAO.getQnADAO().makeanswer2(request);
		request.setAttribute("contentPage", "jsp/sh/QnA_answer.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.getAccountdao().loginCheck(request);
		QnADAO.getQnADAO().updateAns(request);
		QnADAO.getQnADAO().getAllQnA(request);
		QnADAO.getQnADAO().getQnA(request);
		QnADAO.getQnADAO().pagingQnA(1, request);
		QnADAO.getQnADAO().makeanswer(request);
		request.setAttribute("contentPage", "jsp/sh/QnA.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

}
