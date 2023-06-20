package com.semi.sh;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.semi.db.DBManager;

public class QnADAO {
	private ArrayList<QnA> QnAs = null;
	private final static QnADAO QnADao = new QnADAO();
	
	private QnADAO(){
		
	}
	
	public static QnADAO getQnADAO() {
		return QnADao;
	}

	public void getAllQnA(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from inquiry";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			QnAs = new ArrayList<QnA>();
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

	public void getQnA(HttpServletRequest request) {
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

	public void insert(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into inquiry values(?, ?, ?, sysdate, inquiry_no_seq.nextval, ?)";
		try {
			request.setCharacterEncoding("UTF-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String id = request.getParameter("id");
			String title = request.getParameter("inquiry_title");
			String category = request.getParameter("inquiry_category");
			String body = request.getParameter("inquiry_body");
			
			System.out.println(id);
			System.out.println(title);
			System.out.println(category);
			System.out.println(body);
			
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, body);
			pstmt.setString(4, category);
			
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("등록 성공");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("등록 실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	public void pagingQnA(int page, HttpServletRequest request) {
		
		int cnt = 10;	// 한페이지당 보여줄 개수
		int total = QnAs.size();		// 총데이터 개수
		int pageCount = (int)Math.ceil((double)total / cnt);
		
		int start = total - (cnt *(page - 1));
		int end = (page == pageCount) ? -1 : start - (cnt + 1);
	
		ArrayList<QnA> items = new ArrayList<QnA>();
		for (int i = start-1; i > end; i--) {
			items.add(QnAs.get(i));
		}
		
		int emptyItemCount = cnt - items.size();
		for (int i = 0; i < emptyItemCount; i++) {
			items.add(new QnA("", "", "", null, 0, ""));
		}
		
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("curPageNo", page);
		
		request.setAttribute("QnAs", items);
		
	}

	public void delQnA(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete inquiry where inquiry_no = ?";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("pkno"));
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("삭제성공");
				
			}
					
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
		
		
	}

	
}































