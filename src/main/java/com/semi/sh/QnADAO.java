package com.semi.sh;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.semi.db.DBManager;

public class QnADAO {
	private static Connection con = DBManager.connect();
	private ArrayList<QnA> QnAs = null;
	private final static QnADAO QnADao = new QnADAO();
  
	private QnADAO() {

	}

	public static QnADAO getQnADAO() {
		return QnADao;
	}

	public void getAllQnA(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String category = request.getParameter("category");
		if(category == null) {
			category = "공지사항";
		}else if (category.equals("2")) {
			category = "문의하기";
		}else if(category.equals("3")) {
			category = "자주 묻는 질문";
		}
		
		String sql = "select * from inquiry where inquiry_category = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, category);
			
			rs = pstmt.executeQuery();

			QnAs = new ArrayList<QnA>();
			while (rs.next()) {
				QnA qna = new QnA(rs.getString("inquiry_user_id"), rs.getString("inquiry_title"),
						rs.getString("inquiry_body"), rs.getDate("inquiry_question_day"), rs.getInt("inquiry_no"),
						rs.getString("inquiry_category"), rs.getString("inquiry_user_name"), rs.getString("inquiry_answer"), 
						rs.getDate("inquiry_answer_day"), rs.getString("inquiry_encoding"));
				QnAs.add(qna);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		//	DBManager.close(con, pstmt, rs);
		}
	}

	public void getQnA(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from inquiry where inquiry_no = ?";
		try {
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
			qna.setInquiry_user_name(rs.getString("inquiry_user_name"));
			qna.setInquiry_no(rs.getInt("inquiry_no"));
			qna.setInquiry_answer(rs.getString("inquiry_answer"));
			qna.setInquiry_answer_day(rs.getDate("inquiry_answer_day"));

			request.setAttribute("QnA", qna);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		//	DBManager.close(con, pstmt, rs);
		}

	}

	public void insert(HttpServletRequest request) {
		PreparedStatement pstmt = null;

		String sql = "insert into inquiry values(?, ?, ?, sysdate, inquiry_no_seq.nextval, ?, ?, '.', sysdate, ?)";

		try {
			request.setCharacterEncoding("UTF-8");
			pstmt = con.prepareStatement(sql);

			String id = request.getParameter("inquiry_user_id");
			String title = request.getParameter("inquiry_title");
			String category = request.getParameter("inquiry_category");
			String body = request.getParameter("inquiry_body");
			String name = request.getParameter("inquiry_user_name");
			String encoding = request.getParameter("inquiry_encoding");

			System.out.println(id);
			System.out.println(title);
			System.out.println(category);
			System.out.println(body);
			System.out.println(name);
			System.out.println(encoding);
			
			if (body.equals(null)) {
				body = "...";
			}else {
				body = body.replaceAll("\r\n", "<br>");
			}

			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, body);
			pstmt.setString(4, category);
			pstmt.setString(5, name);
			pstmt.setString(6, encoding);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("등록 성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("등록 실패");
		} finally {
		//	DBManager.close(con, pstmt, null);
		}

	}

	public void pagingQnA(int page, HttpServletRequest request) {
		
	    int cnt = 10; // 한 페이지당 보여줄 개수
	    int total = QnAs.size(); // 총 데이터 개수
	    int pageCount = (int) Math.ceil((double) total / cnt);
	    System.out.println(total);
	    int start = total - (cnt * (page - 1));
	    int end = Math.max(start - cnt, 0); // 음수가 아닌 경우에만 값을 변경하도록 수정

	    ArrayList<QnA> items = new ArrayList<QnA>();
	    for (int i = start - 1; i >= end; i--) { // 인덱스 범위를 벗어나지 않도록 수정
	        if (i >= 0 && i < QnAs.size()) { // 유효한 인덱스인지 확인
	            items.add(QnAs.get(i));
	        }
	    }
	    System.out.println(items.size());
	    
	    int emptyItemCount = cnt - items.size();
	    System.out.println(emptyItemCount);
	    for (int i = 0; i < emptyItemCount; i++) {
	        items.add(new QnA("", "", "", null, 0, "", "", "", null, ""));
	    }
	    
	    for (QnA qnA : items) {
			System.out.println(qnA);
			System.out.println(qnA.getInquiry_title());
		}
	    
	    request.setAttribute("pageCount", pageCount);
	    request.setAttribute("curPageNo", page);
	    request.setAttribute("QnAs", items);

	}

	public void delQnA(HttpServletRequest request) {
		PreparedStatement pstmt = null;

		String sql = "delete inquiry where inquiry_no = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("pkno"));

			if (pstmt.executeUpdate() == 1) {
				System.out.println("삭제성공");

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		//	DBManager.close(con, pstmt, null);
		}

	}

	public void updateQnA(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		
		String sql = "update inquiry set inquiry_title = ?, inquiry_body = ?, inquiry_category = ?, inquiry_question_day = sysdate, inquriy_encoding = ? where inquiry_no = ?";
		try {
			request.setCharacterEncoding("utf-8");
			pstmt = con.prepareStatement(sql);
			System.out.println("1");
			System.out.println(request.getParameter("no"));

			String no = request.getParameter("no");
			String title = request.getParameter("inquiry_title");
			String body = request.getParameter("inquiry_body");
			String category = request.getParameter("inquiry_category");
			
			System.out.println("2");
			System.out.println(no);
			System.out.println(title);
			System.out.println(body);
			System.out.println(category);
			
			pstmt.setString(1, title);
			pstmt.setString(2, body);
			pstmt.setString(3, category);
			pstmt.setString(4, no);
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		//	DBManager.close(con, pstmt, null);
		}

	}

	public void updateAns(HttpServletRequest request) {
		String sql = "update inquiry set inquiry_answer = ?, inquiry_answer_day = sysdate where inquiry_no = ?";
		try {
			request.getParameter("no");
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("inquiry_answer"));
			pstmt.setString(2,request.getParameter("no"));
			if (pstmt.executeUpdate() == 1) {
				System.out.println("answered q");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
		//	DBManager.close(con, pstmt, null);
		}
		
	}

	public void makebody(HttpServletRequest request) {
	    QnA qna = (QnA) request.getAttribute("QnA");
	    
	    String body = qna.getInquiry_body();
	    body = body.replaceAll("\r\n", "<br>");
	    qna.setInquiry_body(body);
	    
	}

	public void makebody2(HttpServletRequest request) {
		QnA qna = (QnA) request.getAttribute("QnA");
		
		String body = qna.getInquiry_body();
		body = body.replaceAll("<br>", "\r\n");
		qna.setInquiry_body(body);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
