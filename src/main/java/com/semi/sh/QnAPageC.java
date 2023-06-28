package com.semi.sh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.bj.account.AccountDAO;

@WebServlet("/QnAPageC")
public class QnAPageC extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnADAO.getQnADAO().getAllQnA(request);
		int p = Integer.parseInt(request.getParameter("p"));
		QnADAO.getQnADAO().pagingQnA(p, request);
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "./jsp/sh/QnA.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
