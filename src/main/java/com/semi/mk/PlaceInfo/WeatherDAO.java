package com.semi.mk.PlaceInfo;



import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.semi.db.DBManager;

public class WeatherDAO {
	
	private static Connection con = DBManager.connect();
	private final static WeatherDAO WEATHERDAO = new WeatherDAO(); 
	
	public WeatherDAO() {
	}

	public static WeatherDAO getWeatherdao() {
		return WEATHERDAO;
	}

	public static void makeWeather(HttpServletRequest request) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String pId = request.getParameter("pid"); 
		String sql = "select place_addr2 from place where place_id = ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
			String city = request.getParameter("city");
			String url = "https://api.openweathermap.org/data/2.5/forecast?q=" + city + "&units=metric&cnt=40&appid=3c20bb3f5ab75a340db446d8ba273c5b";
			
			
			URL u = new URL(url);
			HttpsURLConnection  huc = (HttpsURLConnection) u.openConnection();
			
			InputStream is = huc.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			
			
			JSONParser jp = new JSONParser();
			
			JSONObject weatherData = (JSONObject) jp.parse(isr);
			
			JSONObject sysJ = (JSONObject) weatherData.get("city");
			JSONArray weatherJ = (JSONArray) weatherData.get("list");
			
			String cityName = sysJ.get("name") + "";
			String countryName = sysJ.get("country") + "";
			
			request.setAttribute("cityName", cityName);
			request.setAttribute("countryName", countryName);
			
			Weather weather = null;
			
			ArrayList<Weather> weathers = new ArrayList<Weather>();
			
			for(int i = 0; i < 3; i++) {
				JSONObject day = (JSONObject) weatherJ.get(8 * i + 4);
				String date = (String) day.get("dt_txt");
				String popS = day.get("pop") + "";
				double pop = Double.parseDouble(popS);
				JSONObject main = (JSONObject) day.get("main");
				String humidity = main.get("humidity") + "";
				String minTemp = main.get("temp_min") + "";
				String maxTemp = main.get("temp_max") + "";
				String fillTemp = main.get("feels_like") + "";
				
				JSONArray conditionJ = (JSONArray) day.get("weather");
				String condition = ((JSONObject) conditionJ.get(0)).get("main") + "";
				String icon = ((JSONObject) conditionJ.get(0)).get("icon") + "";
				
				
				String windspeed = ((JSONObject) day.get("wind")).get("speed") + "";
				
				weather = new Weather(humidity, minTemp, maxTemp, fillTemp, windspeed, condition, date, icon, pop);				
				weathers.add(weather);
			}
			
			request.setAttribute("weathers", weathers);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
	

