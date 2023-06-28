package com.semi.jy.recommend;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.bj.account.AccountDAO;

@WebServlet("/RecommendC")
public class RecommendC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ajax 로 리턴받을꺼라 포워드 갈곳 없음 그냥 서버랑 통신만 하고 원래 있던데로 결과 값(json) 가지고 돌아감
		// testing..
		//AccountDAO.loginCheck(request);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");
		out.print(PlaceDAO.recommendPlace(request).toJSONString());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//AccountDAO.loginCheck(request);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");
		out.print(PlaceDAO.presentAllPlaces(request).toJSONString());
	}

}
