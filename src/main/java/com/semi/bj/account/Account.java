package com.semi.bj.account;


public class Account {

	private String user_id;
	private String user_name;
	private String user_pw;
	private String user_gender;
	private String user_create_at;
<<<<<<< HEAD
	private String user_points;
	private String user_question;
	private String user_answer;
=======
>>>>>>> 855e753923fc094c830a28c5677325502bfb7dcf

	public Account() {
		// TODO Auto-generated constructor stub
	}

<<<<<<< HEAD
	public Account(String user_id, String user_name, String user_pw, String user_gender,
			String user_create_at, String user_points, String user_question, String user_answer) {
=======
	public Account(Date date, String user_id, String user_name, String user_pw, String user_gender,
			String user_create_at) {
>>>>>>> 855e753923fc094c830a28c5677325502bfb7dcf
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pw = user_pw;
		this.user_gender = user_gender;
		this.user_create_at = user_create_at;
<<<<<<< HEAD
		this.user_points = user_points;
		this.user_question = user_question;
		this.user_answer = user_answer;
=======
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
>>>>>>> 855e753923fc094c830a28c5677325502bfb7dcf
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

<<<<<<< HEAD
	public String getUser_points() {
		return user_points;
	}

	public void setUser_points(String user_points) {
		this.user_points = user_points;
	}

	public String getUser_question() {
		return user_question;
	}

	public void setUser_question(String user_question) {
		this.user_question = user_question;
	}

	public String getUser_answer() {
		return user_answer;
	}

	public void setUser_answer(String user_answer) {
		this.user_answer = user_answer;
	}

	

=======
>>>>>>> 855e753923fc094c830a28c5677325502bfb7dcf
}
