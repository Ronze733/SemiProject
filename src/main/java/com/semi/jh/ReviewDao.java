package com.semi.jh;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
			ArrayList<Review> reviews= new ArrayList<Review>();
		while (rs.next()) {
			int id=rs.getInt("review_id");
			String user_id=rs.getString("review_user_id");
			String place=rs.getString("review_place");
			String title=rs.getString("review_title");
			Date date=rs.getDate("review_create_at");
			String pic=rs.getString("review_pic");
			int likes=rs.getInt("review_likes");
			r = new Review(id, user_id, place, title, date, pic, likes);
			reviews.add(r);
		}
		request.setAttribute("reviews", reviews);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
			
		}
		
		
	}

	public static void insert(HttpServletRequest request) {
		Connection con =null;
		PreparedStatement pstmt =null;
		String url="insert into review values(review_id_seq.nextval,?,?,?,?,sysdate,?,0)";
		String path = request.getServletContext().getRealPath("img");
		try {
			MultipartRequest mr = new MultipartRequest(request, path , 30*1024*1024,"utf-8",new DefaultFileRenamePolicy());
			con = DBManager.connect();
			pstmt = con.prepareStatement(url);
			
			String user_id=mr.getParameter("id");
			String place= mr.getParameter("place_name");
			String title=mr.getParameter("title");
			String body=mr.getParameter("body");
			String pic=mr.getFilesystemName("pic");
	
			
			pstmt.setString(1, user_id);
			pstmt.setString(2, place);
			pstmt.setString(3, title);
			pstmt.setString(4, body);
			pstmt.setString(5, pic);
			
			
			if (pstmt.executeUpdate()==1) {
				System.out.println("등록성공");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("등록실패");
		}finally {
			DBManager.close(con, pstmt, null);
			
		}
		
		
		
	}
	
}
