package com.semi.mk.PlaceInfo;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
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
	
	private final static WeatherDAO WEATHERDAO = new WeatherDAO(); 
	
	public WeatherDAO() {
	}

	public static WeatherDAO getWeatherdao() {
		return WEATHERDAO;
	}

	public void makeWeather(HttpServletRequest request) {
		
		Connection con = DBManager.connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String pId = request.getParameter("pid"); 
		String sql = "select place_addr2 from place where place_id = ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {

			String city = rs.getString("place_addr2");
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
				
				for (int i = 0; i < 3; i++) {
					JSONObject day = (JSONObject) weatherJ.get(8 * i + 4);
					String date = (String) day.get("dt_txt");
					String popS = day.get("pop") + "";
					double pop = Double.parseDouble(popS);
					JSONObject main = (JSONObject) day.get("main");
					String humidity = main.get("humidity") + "";
					String minTemp = main.get("temp_min") + "";
					String maxTemp = main.get("temp_max") + "";
					String feelTemp = main.get("feels_like") + "";
					
					JSONArray conditionJ = (JSONArray) day.get("weather");
					String condition = ((JSONObject) conditionJ.get(0)).get("main") + "";
					String icon = ((JSONObject) conditionJ.get(0)).get("icon") + "";
					icon = icon.replace("n", "d");
					
					String translatedCondition = translateToKorean(condition);
					
					String windspeed = ((JSONObject) day.get("wind")).get("speed") + "";
					
					weather = new Weather(humidity, minTemp, maxTemp, feelTemp, windspeed, translatedCondition, date, icon, pop);				
					weathers.add(weather);
				}
				request.setAttribute("weathers", weathers);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		DBManager.close(con, pstmt, rs);
	}

	private String translateToKorean(String text) {
		try {
			String clientId = "CZOwyIgNqLWbV3KA8X0R"; 
			String clientSecret = "c9vayS3MZU"; 
			
			String query = URLEncoder.encode(text, "UTF-8");
			String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
			
			URL url = new URL(apiURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("X-Naver-Client-Id", clientId);
			conn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			
			String postParams = "source=en&target=ko&text=" + query;
			conn.setDoOutput(true);
			conn.getOutputStream().write(postParams.getBytes("UTF-8"));
			
			int responseCode = conn.getResponseCode();
			
			BufferedReader br;
			
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
			
			StringBuilder response = new StringBuilder();
			String line;
			
			while ((line = br.readLine()) != null) {
				response.append(line);
			}
			
			br.close();
			
			JSONParser parser = new JSONParser();
			JSONObject result = (JSONObject) parser.parse(response.toString());
			JSONObject message = (JSONObject) result.get("message");
			JSONObject resultData = (JSONObject) message.get("result");
			String translatedText = resultData.get("translatedText").toString();
			
			  if (translatedText.equals("분명한")) {
		            translatedText = "맑음";
		        }
			
			  if (translatedText.equals("구름")) {
		            translatedText = "흐림";
		        }
			  if (translatedText.equals("비.")) {
		            translatedText = "비";
		        }
			return translatedText;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}

