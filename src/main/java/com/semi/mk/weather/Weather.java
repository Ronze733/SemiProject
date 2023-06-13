package com.semi.mk.weather;

public class Weather {
 private int weather_id;
 private int weather_place_id;
 private float humidity;
 private float temperature;
 private float wind_speed;
 private String weather_condition;
 
 public Weather() {
	// TODO Auto-generated constructor stub
}

public Weather(int weather_id, int weather_place_id, float humidity, float temperature, float wind_speed,
		String weather_condition) {
	super();
	this.weather_id = weather_id;
	this.weather_place_id = weather_place_id;
	this.humidity = humidity;
	this.temperature = temperature;
	this.wind_speed = wind_speed;
	this.weather_condition = weather_condition;
}

public int getWeather_id() {
	return weather_id;
}

public void setWeather_id(int weather_id) {
	this.weather_id = weather_id;
}

public int getWeather_place_id() {
	return weather_place_id;
}

public void setWeather_place_id(int weather_place_id) {
	this.weather_place_id = weather_place_id;
}

public float getHumidity() {
	return humidity;
}

public void setHumidity(float humidity) {
	this.humidity = humidity;
}

public float getTemperature() {
	return temperature;
}

public void setTemperature(float temperature) {
	this.temperature = temperature;
}

public float getWind_speed() {
	return wind_speed;
}

public void setWind_speed(float wind_speed) {
	this.wind_speed = wind_speed;
}

public String getWeather_condition() {
	return weather_condition;
}

public void setWeather_condition(String weather_condition) {
	this.weather_condition = weather_condition;
}
 
}
