package com.semi.jh;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.semi.db.DBManager;

public class ReviewDao {

	public static void select(HttpServletRequest request) {
		Connection con =null;
		PreparedStatement pstmt =null;
		ResultSet rs= null;
		String url="select * from review";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(url);
			rs = pstmt.executeQuery();
			Review r = null;
			ArrayList<Review> reviews = new ArrayList<Review>();
			while (rs.next()) {
				int id=rs.getInt("review_id");
				String user_id = rs.getString("review_user_id");
				String place = rs.getString("review_place");
				String title = rs.getString("review_title");
				String body = rs.getString("review_body");
				Date date = rs.getDate("review_created_at");
				String pic = rs.getString("review_pic");
				int likes = rs.getInt("review_likes");
				r = new Review(id, user_id, place, title, body, date, pic, likes);
				reviews.add(r);
			}
			request.setAttribute("reviews", reviews);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
			
		}
		
		
	}
	public static void selectid(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String url = "select * from review where review_id=?";
		String idString = request.getParameter("id");
		int id = Integer.parseInt(idString);
		try {
		    con = DBManager.connect();
		    pstmt = con.prepareStatement(url);
		    pstmt.setInt(1, id);
		    rs = pstmt.executeQuery();
		    Review review = null;
		    while (rs.next()) {
		        int reviewId = rs.getInt("review_id");
		        String user_id = rs.getString("review_user_id");
		        String place = rs.getString("review_place");
		        String title = rs.getString("review_title");
		        String body = rs.getString("review_body");
		        Date date = rs.getDate("review_created_at");
		        String pic = rs.getString("review_pic");
		        int likes = rs.getInt("review_likes");
		        review = new Review(reviewId, user_id, place, title, body, date, pic, likes);
		    }
		    request.setAttribute("review", review);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
			
		}
		
		
	}
	public static void insert(HttpServletRequest request) {
		Connection con =null;
		PreparedStatement pstmt =null;
		String url="INSERT INTO review VALUES (review_id_seq.nextval, 'jh' , ? , ? , ? , sysdate , ? , 0)";
		String path = request.getServletContext().getRealPath("img/jh");
		System.out.println(path);
		try {
			MultipartRequest mr = new MultipartRequest(request, path , 30*1024*1024,"utf-8",new DefaultFileRenamePolicy());
			con = DBManager.connect();
			pstmt = con.prepareStatement(url);
			
			//String user_id=mr.getParameter("id");
			String place= mr.getParameter("place_name");
			String title=mr.getParameter("title");
			String body=mr.getParameter("body");
			String pic=mr.getFilesystemName("pic");
	
			System.out.println(place);
			System.out.println(title);
			System.out.println(body);
			System.out.println(pic);

			//pstmt.setString(1, user_id);
			pstmt.setString(1, place);
			pstmt.setString(2, title);
			pstmt.setString(3, body);
			pstmt.setString(4, pic);
			
			
			if (pstmt.executeUpdate()==1) {
				String result = "등록성공";
				System.out.println("등록성공");
				request.setAttribute("result", result);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("등록실패");
		}finally {
			DBManager.close(con, pstmt, null);
			
		}
		
		
		
	}

	public static void delete(HttpServletRequest request) {
		Connection con =null;
		PreparedStatement pstmt =null;
		String url="delete from review where review_id=? ";
		String id = request.getParameter("id");
		System.out.println(id);
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(url);
			pstmt.setString(1, id);
			
			if (pstmt.executeUpdate()==1) {
				System.out.println("삭제성공");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("삭제실패");
		}finally {
			DBManager.close(con, pstmt, null);
			
		}
		
	}

	public static void update(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String path = request.getServletContext().getRealPath("img/jh");
		String url = "update review set review_pic=? ,review_title=? ,review_body=? ,review_place=? where review_id=?";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(url);
			MultipartRequest mr = new MultipartRequest(request, path , 30*1024*1024,"utf-8",new DefaultFileRenamePolicy());
			
		    String pic_new = mr.getFilesystemName("pic_new");
		    String pic = mr.getParameter("pic");
		    String title = mr.getParameter("title");
		    String body = mr.getParameter("body");
		    String place = mr.getParameter("place");
		    String id=mr.getParameter("id");
		    
			System.out.println(pic_new);
			System.out.println(pic);
			System.out.println(title);
			System.out.println(body);
			System.out.println(place);
			System.out.println(id);

			pstmt = con.prepareStatement(url);
			pstmt.setString(1, pic_new);
			pstmt.setString(2, title);
			pstmt.setString(3, body);
			pstmt.setString(4, place);
			pstmt.setString(5, id);
			
			if (pstmt.executeUpdate()==1) {
				System.out.println("수정 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("수정 실패");
			
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
	}
}

