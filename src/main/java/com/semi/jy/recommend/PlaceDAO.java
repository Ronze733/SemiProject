package com.semi.jy.recommend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.semi.db.DBManager;

public class PlaceDAO {
	
	public static void recommendPlace(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
		ArrayList<String> conditions = new ArrayList<String>();
		ArrayList<String> conditions2 = new ArrayList<String>();
		ArrayList<Place> recommendPlaces = new ArrayList<Place>();
		
		request.setCharacterEncoding("utf-8");
		// null == 다 선택한 것
		String[] themes = request.getParameterValues("themes");
		String[] places = request.getParameterValues("places");
		String[] locations = request.getParameterValues("locations");
		System.out.println(themes);
		System.out.println(places);
		System.out.println(locations);
		
		System.out.println("------------");
		
		String themes2 = "" ;
		
		if (themes != null) {
			for (String s : themes) {
				themes2 += s + "!";
			}
		}
		
		System.out.println(themes2);
		
		String places2 ="";
		
		if (places != null) {
			for (String s : places) {
				places2 += s + "!";
			}
		}
		
		System.out.println(places2);
		
		if (themes != null) {
				conditions.add("place_category1 like ?");
		}
		
		if (places != null) {
				conditions.add("place_category2 like ?");
		}
		
		if (locations != null) {
			for (int i = 0; i < locations.length; i++) {
				conditions2.add("place_category3 = ?");
			}
		}
		
		String sql = "select * from place ";
		if (themes != null) {
			sql += "where " + conditions.get(0);
		} 
		
		if (places != null) {
			sql += " and " + conditions.get(1);	
		} 
		
		if (locations != null) {
			sql += " and (" + String.join(" or ", conditions2) +")";
		}
		
		System.out.println("/////////////////");
		System.out.println(sql);
		
 			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			if (themes != null) {
				pstmt.setString(1, "%" + themes2 + "%");
			}
			if (places != null) {
				pstmt.setString(2, "%" + places2 + "%");
			}
			
			int index = 3;
			
			if (locations != null) {
				for (int i = 0; i < locations.length; i++) {
					pstmt.setString(index++, locations[i]);
				}
			}
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int p_id = rs.getInt("place_id");
				String p_name = rs.getString("place_name");
				String p_addr = rs.getString("place_addr");
				String p_category1 = rs.getString("place_category1");
				String p_category2 = rs.getString("place_category2");
				String p_category3 = rs.getString("place_category3");
				String p_explain = rs.getString("place_explain");
				String p_pic = rs.getString("place_pic");
				
				Place place = new Place(p_id, p_name, p_addr, p_category1, p_category2, p_category3, p_explain, p_pic);
				recommendPlaces.add(place);
				
				request.setAttribute("recommendPlaces", recommendPlaces);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
}
