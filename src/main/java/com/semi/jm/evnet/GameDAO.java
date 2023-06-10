package com.semi.jm.evnet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedHashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.semi.db.DBManager;

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
		hs.setMaxInactiveInterval(60 * 10);	// 1분
	}

	public void makeProblem(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =  null;
		
		Random rand = new Random();
		
		LinkedHashMap<Integer, String> answerMap = new LinkedHashMap<>();
		
		int id;
		int cnt = 0;
		
		String sql = "select * from space";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				cnt++;
			}
			
			id = rand.nextInt(cnt) + 1;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
	
	

}
