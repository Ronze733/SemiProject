package com.semi.jy.recommend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.semi.db.DBManager;

public class PlaceDAO {
	
	
	
	public static JSONObject recommendPlace2(HttpServletRequest request) {
		System.out.println("GET Start ===============");
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.connect();

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
			
			String sql = "select * from place where ";
			
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
			
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			
			System.out.println(themeVals.length);
			System.out.println(placeVals.length);
			System.out.println(locationVals.length);
			
			System.out.println(themeVals[0]);
			System.out.println(placeVals[0]);
			System.out.println(locationVals[0]);
			
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
				System.out.println(pic);
				System.out.println(name);
				JSONObject jo = new JSONObject();
				jo.put("id", id);
				jo.put("pic", pic);
				jo.put("name", name);
				ja.add(jo);
			}
			myJson.put("data", ja);
			return myJson;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
		
		
	}
	public static void recommendPlace(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
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


			if (themes != null) {
				for (int i = 0; i < themes.length; i++) {
					themes[i] = themes[i] + "!";
				}
			}


			if (places != null) {
				for (int i = 0; i < places.length; i++) {
					places[i] = places[i] + "!";
				}
			}

			String sql = "select * from place";

			if (themes != null || places != null || locations != null)
				sql += " where ";

			if (themes != null) {
				
				sql += "(";
				for (int i = 0; i < themes.length; i++) {
					if (i == themes.length-1) {
						sql += "place_category1 like ? ";
					} else {
						sql += "place_category1 like ? and ";
					}
				}
				sql += ")";

				if (places != null || locations != null) {
					sql += " and ";
				}
			}

			if (places != null) {
				sql += "(";
				for (int i = 0; i < places.length; i++) {
					if (i == places.length-1) {
						sql += "place_category2 like ? ";
					} else {
						sql += "place_category2 like ? and ";
					}
				}
				sql += ")";

				if (locations != null) {
					sql += " and ";
				}
			}
			
			if (locations != null) {
				sql += "(";
				for (int i = 0; i < locations.length; i++) {
					if (i == locations.length - 1)
						sql += "place_category3 = ?";
					else
						sql += "place_category3 = ? or ";
				}
				sql += ")";
			}

			System.out.println("/////////////////");
			System.out.println(sql);

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			int index = 1;
			if (themes != null) {
				for (int i = 0; i < themes.length; i++) {
					pstmt.setString(index++, "%" + themes[i] + "%");
				}
			}

			if (places != null) {
				
				for (int i = 0; i < places.length; i++) {
					pstmt.setString(index++, "%" + places[i] + "%");
				}
			}

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
			}
			
			request.setAttribute("recommendPlaces", recommendPlaces);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}
}
