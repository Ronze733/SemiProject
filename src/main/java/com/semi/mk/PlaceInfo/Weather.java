package com.semi.mk.PlaceInfo;

public class Weather {
	private String humidity;
	private String minTemp;
	private String maxTemp;
	private String feelTemp;
	private String windSpeed;
	private String condition;
	private String day;
	private String icon;
	private double pop;
	
	public Weather() {
		// TODO Auto-generated constructor stub
	}

	public Weather(String humidity, String minTemp, String maxTemp, String feelTemp, String windSpeed, String condition,
			String day, String icon, double pop) {
		super();
		this.humidity = humidity;
		this.minTemp = minTemp;
		this.maxTemp = maxTemp;
		this.feelTemp = feelTemp;
		this.windSpeed = windSpeed;
		this.condition = condition;
		this.day = day;
		this.icon = icon;
		this.pop = pop;
	}

	public String getHumidity() {
		return humidity;
	}

	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}

	public String getMinTemp() {
		return minTemp;
	}

	public void setMinTemp(String minTemp) {
		this.minTemp = minTemp;
	}

	public String getMaxTemp() {
		return maxTemp;
	}

	public void setMaxTemp(String maxTemp) {
		this.maxTemp = maxTemp;
	}

	public String getFeelTemp() {
		return feelTemp;
	}

	public void setFeelTemp(String feelTemp) {
		this.feelTemp = feelTemp;
	}

	public String getWindSpeed() {
		return windSpeed;
	}

	public void setWindSpeed(String windSpeed) {
		this.windSpeed = windSpeed;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public double getPop() {
		return pop;
	}

	public void setPop(double pop) {
		this.pop = pop;
	}
	
	
}
