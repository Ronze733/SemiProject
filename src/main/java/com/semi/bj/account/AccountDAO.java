package com.semi.bj.account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.semi.db.DBManager;

public class AccountDAO {

	public static void login(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		Date date = new Date();

		String email = request.getParameter("email");
		String pw = request.getParameter("password");
		String result = "";

		String sql = "select * from user_tbl where user_id = ?";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String dbPw = rs.getString("user_pw");
				if (pw.equals(dbPw)) {
					result = "로그인 성공!";
					Account userInfo = new Account();
					userInfo.setUser_id("user_id");
					userInfo.setUser_name("user_name");
					userInfo.setUser_pw("user_pw");
					userInfo.setUser_create_at("user_create_at");
					userInfo.setUser_gender("user_gender");
					userInfo.setUser_points("user_points");

					HttpSession hs = request.getSession();
					hs.setAttribute("account", userInfo);
					hs.setMaxInactiveInterval(60);
				} else {
					result = "비밀번호가 맞지 않습니다";
				}
				
			} else {
				result = "존재하지 않는 회원입니다";
			}
			request.setAttribute("result", result);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public static void loginCheck(HttpServletRequest request) {
		// TODO Auto-generated method stub

	}

	public static void regAccount(HttpServletRequest request) {

		Date date = new Date();

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into user_tbl values(?, ?, ?, sysdate, ?, '0')";

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
