package com.semi.bj.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AccountUpdateC")
public class AccountUpdateC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		request.getRequestDispatcher("jsp/bj/login/update.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (AccountDAO.loginCheck(request)) {
			AccountDAO.accountUpdate(request);
			AccountDAO.loginCheck(request);
			request.getRequestDispatcher("jsp/bj/login/myPage.jsp").forward(request, response);

		} else {
			AccountDAO.accountCheck(request);
			if (AccountDAO.accountCheck(request)) {
				request.getRequestDispatcher("jsp/bj/login/pwRecovery2.jsp").forward(request, response);

			} else {
				// 비밀번호 질문 답 오류, 그 때 어디로 보낼 지 생각
				request.getRequestDispatcher("jsp/bj/login/login.jsp").forward(request, response);
			}
		}
	}

}
