package com.semi.bj.account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import com.semi.db.DBManager;

public class AccountDAO {

	public static void regAccount(HttpServletRequest request) {
	
	Date date = new Date();
	
	Connection con = null;
	PreparedStatement pstmt = null;
	String sql = "insert into user_tbl values(?, ?, ?, date, ?, '0')";
	
	String email = request.getParameter("email");
	String nickname = request.getParameter("nickname");
	String pw = request.getParameter("password");
	String pwConfirm = request.getParameter("passwordConfirm");
	String gender = request.getParameter("gender");

	
	try {
		
		con = DBManager.connect();
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, nickname);
		pstmt.setString(3, pw);
		pstmt.setString(4, gender);
		
		
	} catch (Exception e) {
		e.printStackTrace();
		
	} finally {
		DBManager.close(con, pstmt, null);
	}
	
		
	}

}
