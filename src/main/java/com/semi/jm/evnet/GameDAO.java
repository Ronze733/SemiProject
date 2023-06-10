package com.semi.jm.evnet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class GameDAO {
	private static final GameDAO GAMEDAO = new GameDAO();
	
	private GameDAO() {
		// TODO Auto-generated constructor stub
	}

	public static GameDAO getGamedao() {
		return GAMEDAO;
	}

	public void makeSession(HttpServletRequest request) {
		// TODO Auto-generated method stub
		EventStatus eventStatus = new EventStatus(-10, -10, -10, -10, -10);
		
		HttpSession hs = request.getSession();
		hs.setAttribute("eventStatus", eventStatus);
		hs.setMaxInactiveInterval(60);	// 1분
		
	}
	
	

}
