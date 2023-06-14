package com.semi.bj.account;

import java.util.Date;

public class Account {

	Date date = new Date();

	private String user_id;
	private String user_name;
	private String user_pw;
	private String user_gender;
	private String user_create_at;
	private String user_points;

	public Account() {

	}

	public Account(Date date, String user_id, String user_name, String user_pw, String user_gender,
			String user_create_at, String user_points) {
		super();
		this.date = date;
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pw = user_pw;
		this.user_gender = user_gender;
		this.user_create_at = user_create_at;
		this.user_points = user_points;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_create_at() {
		return user_create_at;
	}

	public void setUser_create_at(String user_create_at) {
		this.user_create_at = user_create_at;
	}

	public String getUser_points() {
		return user_points;
	}

	public void setUser_points(String user_points) {
		this.user_points = user_points;
	}

}