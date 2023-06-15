package com.semi.sh;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.semi.db.DBManager;

public class QnADAO {

	public static void getAllQnA(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from inquiry";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<QnA> QnAs = new ArrayList<QnA>();
			while (rs.next()) {
				QnA qna = new QnA(rs.getString("inquiry_user_id"), rs.getString("inquiry_title"), rs.getString("inquiry_body"),
						rs.getDate("inquiry_question_day"), rs.getInt("inquiry_no"), rs.getString("inquiry_category"));
				QnAs.add(qna);
			}
			
			request.setAttribute("QnAs", QnAs);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static void getQnA(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from inquiry where inquiry_no = ?";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("no"));
			rs = pstmt.executeQuery();
			
			rs.next();
			
			QnA qna = new QnA();
			
			qna.setInquiry_user_id(rs.getString("inquiry_user_id"));
			qna.setInquiry_title(rs.getString("inquiry_title"));
			qna.setInquiry_category(rs.getString("inquiry_category"));
			qna.setInquiry_question_day(rs.getDate("inquiry_question_day"));
			qna.setInquiry_body(rs.getString("inquiry_body"));
			
			request.setAttribute("QnA", qna);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public static void insert(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into inquiry values(?, ?, ?, sysdate, inquiry_seq.nextval, ?)";
		try {
			request.setCharacterEncoding("UTF-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

	
}
