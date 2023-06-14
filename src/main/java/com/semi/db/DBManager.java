package com.semi.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {
	
	public static Connection connect() throws SQLException {
		String url = "jdbc:oracle:thin:@db202204301707_high?TNS_ADMIN=C:/oracleDB/Wallet_DB202204301707";
		String id = "JM";
		String pw = "Soldesk802!!!";
		
		System.out.println("접속 성공");
		return DriverManager.getConnection(url, id, pw);
	}
	
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(con != null)
				con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
