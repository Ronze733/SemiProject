package com.semi.jy.recommend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.semi.db.DBManager;

public class PlaceDAO {
	
//	private static DBManager db = DBManager.connect();
	private static Connection con = DBManager.connect();
	
			
	
	public static JSONObject recommendPlace(HttpServletRequest request) {
		System.out.println("GET Start ===============");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			

			// 테마 값 받기
			String themes = request.getParameter("themeQuery");
			String places = request.getParameter("placeQuery");
			String locations = request.getParameter("locationQuery");
			
			System.out.println(themes);
			System.out.println(places);
			System.out.println(locations);
			
			String themeVals[] = themes.split("!"); 
			String placeVals[] = places.split("!");
			String locationVals[] = locations.split("!");
			
			String sql = "select * from place";
			
			if (!themes.equals("") || !places.equals("") || !locations.equals("")) {
				sql += " where ";
			}	

			if (!themes.equals("")) {
				for (int i = 0; i < themeVals.length; i++) {
					sql += "place_category1 like '%'||?||'%'";
					if (i != themeVals.length-1) {
						sql += " and ";
					}
				}
				if (!places.equals("") || !locations.equals("")) {
					sql += " and ";
				}
			}
			
			if (!places.equals("")) {
				for (int i = 0; i < placeVals.length; i++) {
					sql += "place_category2 like '%'||?||'%'";
					if (i != placeVals.length-1) {
						sql += " and ";
					}
				}
				if (!locations.equals("")) {
					sql += " and ";
				}
			}
			
			if (!locations.equals("")) {
				sql += "(";
				for (int i = 0; i < locationVals.length; i++) {
					sql += "place_category3 = ? ";
					if (i != locationVals.length-1) {
						sql += " or ";
					}
				}
				sql += ")";
			}
			
			sql += " order by place_id";
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			
			int index = 1;
			
			if (themes != "") {
				for (int i = 0; i < themeVals.length; i++) {
					pstmt.setString(index++, themeVals[i]);
				}
			}

			if (places != "") {
				for (int i = 0; i < placeVals.length; i++) {
					pstmt.setString(index++, placeVals[i]);
				}
			}
			
			if (locations != "") {
				for (int i = 0; i < locationVals.length; i++) {
					pstmt.setString(index++, locationVals[i]);
				}
			}
			
			rs = pstmt.executeQuery();
			// 이미지랑 제목만
			
			/*
				{ 
				"data" : [
						{"img" : "a.jpg",
						 "name" : aaa},
						{"img" : a.jpg,
						 "name" : aaa},
						{"img" : a.jpg,
						 "name" : aaa},
					]
				}
			 */
			
			JSONObject myJson = new JSONObject();
			JSONArray ja = new JSONArray();
			
			while (rs.next()) {
				int id = rs.getInt("place_id");
				String pic = rs.getString("place_pic");
				String name = rs.getString("place_name");
				String p_category3 = rs.getString("place_category3");
				System.out.println(name);
				JSONObject jo = new JSONObject();
				jo.put("id", id);
				jo.put("pic", pic);
				jo.put("name", name);
				jo.put("category3", p_category3);
				ja.add(jo);
			}
			myJson.put("data", ja);
			return myJson;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	public static JSONObject presentAllPlaces(HttpServletRequest request) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from place order by place_id";
		try {
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			JSONObject myJson = new JSONObject();
			JSONArray ja = new JSONArray();
			while (rs.next()) {
				int id = rs.getInt("place_id");
				String pic = rs.getString("place_pic");
				String name = rs.getString("place_name");
				String addr = rs.getString("place_addr");
				String p_category1 = rs.getString("place_category1");
				String p_category2 = rs.getString("place_category2");
				String p_category3 = rs.getString("place_category3");
				String p_explain = rs.getString("place_explain");
				JSONObject jo = new JSONObject();
				jo.put("id", id);
				jo.put("pic", pic);
				jo.put("name", name);
				jo.put("addr", addr);
				jo.put("category1", p_category1);
				jo.put("category2", p_category2);
				jo.put("category3", p_category3);
				jo.put("explain", p_explain);
				
				ja.add(jo);
			}
			myJson.put("data", ja);
			return myJson;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//db.close(con, pstmt, rs);
		}
		
		return null;
	}
}
