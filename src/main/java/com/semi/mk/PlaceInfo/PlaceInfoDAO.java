package com.semi.mk.PlaceInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.semi.db.DBManager;



public class PlaceInfoDAO {
	public static void getPlaceInfo(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select*from place where place_name=?";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("pid"));
			rs= pstmt.executeQuery();
			rs.next();
			int p_id = rs.getInt("p_id");
			String p_name = rs.getString("p_name");
			String p_category1 = rs.getString("p_category1");
			String p_category2 = rs.getString("p_category2");
			String p_category3 = rs.getString("p_category3");
			String p_placePic = rs.getString("p_pic");
			String p_explain = rs.getString("p_explain");
			String p_addr = rs.getString("p_addr");
			PlaceInfo pi = new PlaceInfo(p_id, p_name, p_category1, p_category2, p_category3, p_placePic, p_explain, p_addr);  
			request.setAttribute("placeInfo",pi);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	finally {
		DBManager.close(con, pstmt, rs);
	}
}
}
