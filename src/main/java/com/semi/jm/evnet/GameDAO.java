package com.semi.jm.evnet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		
		QuizAnswer[] answers = new QuizAnswer[4];
		
		int id = 0;
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
		
		int q1;
		int q2;
		int q3;
		
		do {
			q1 = rand.nextInt(cnt) + 1;
		} while(q1 == id);
		
		do {
			q2 = rand.nextInt(cnt) + 1;
		} while(q2 == id || q2 == q1);
		
		do {
			q3 = rand.nextInt(cnt) + 1;
		} while(q3 == id || q3 == q1 || q3 == q2);
		
		sql = "select space_id, space_name, space_explain, space_pic from space "
				+ "where space_id = ? or space_id = ? or space_id = ? or space_id = ?";
		String pic = "";
		String explain = "";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, q1);
			pstmt.setInt(2, q2);
			pstmt.setInt(3, q3);
			pstmt.setInt(4, id);
			
			rs = pstmt.executeQuery();
			
			int i = 0;
			
			while(rs.next()) {
				if(id == rs.getInt("space_id")) {
					pic = rs.getString("space_pic");
					explain = rs.getString("space_explain");
				}
				QuizAnswer answer = new QuizAnswer(rs.getInt("space_id"), rs.getString("space_name"));
				answers[i] = answer;
				i++;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
		for(int i = 0; i < 1000; i++) {
			int j = rand.nextInt(4);
			int k = rand.nextInt(4);
			while(j == k)
				k = rand.nextInt(4);
			QuizAnswer temp = answers[j];
			answers[j] = answers[k];
			answers[k] = temp;
		}
		
		request.setAttribute("answers", answers);
		request.setAttribute("answer_pic", pic);
		request.setAttribute("explain", explain);
		request.setAttribute("correct", id);
	}
	
	

}
