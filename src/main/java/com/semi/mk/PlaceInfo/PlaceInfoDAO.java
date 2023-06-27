package com.semi.mk.PlaceInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.semi.db.DBManager;



public class PlaceInfoDAO {
	
	public static void getPlaceInfo(HttpServletRequest request) {
		Connection con = DBManager.connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String pId = request.getParameter("pid");
		System.out.println(pId);
		String sql = "select*from place where place_id=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pId);
			rs= pstmt.executeQuery();
			
			if (rs.next()) {
			
			int p_id = rs.getInt("place_id");
			String p_name = rs.getString("place_name");
			String p_category1 = rs.getString("place_category1");
			String p_category2 = rs.getString("place_category2");
			String p_category3 = rs.getString("place_category3");
			String p_placePic = rs.getString("place_pic");
			String p_explain = rs.getString("place_explain");
			String p_addr = rs.getString("place_addr");
			
			PlaceInfo pi = new PlaceInfo(p_id, p_name, p_category1, p_category2, p_category3, p_placePic, p_explain, p_addr);  
			
			request.setAttribute("placeInfo",pi);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
}
}
