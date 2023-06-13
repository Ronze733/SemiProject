package com.semi.mk.weather;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.semi.db.DBManager;

public class WeatherDAO {
	
	private static ArrayList<Weather> weathers;
  
	public static void weather(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "Select*from weather";
		
		try {
			con = DBManager.connect();
			pstmt= con.prepareStatement(sql);
			rs= pstmt.executeQuery();
			weathers = new ArrayList<Weather>();
			Weather w = null;
			
			while (rs.next()) {
				int weather_id = rs.getInt("weather_id");
				int place_id = rs.getInt("place_id");
				float humidity = rs.getFloat("humidity");
				float temperature = rs.getFloat("temperature");
				float wind_speed = rs.getFloat("wind_speed");
				String weather_condition = rs.getString("weather_condition");
				 w = new Weather(weather_id, place_id, humidity, temperature, wind_speed, weather_condition);
				weathers.add(w);	 
			} request.setAttribute("weathers", weathers);
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
	
	
	
	public static void weatherUpdate(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "update weather set humidity=?,temperature=?, wind_speed, weather_condition=? where weather_id";
		
		try {
			con = DBManager.connect();
			pstmt= con.prepareStatement(sql);
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

	
}
