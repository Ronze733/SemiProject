package com.semi.sh;

import java.sql.Date;

public class QnA {

		private String inquiry_user_id;
		private String inquiry_title;
		private String inquiry_body;
		private Date inquiry_question_day;
		private int inquiry_no;
		private String inquiry_category;
		private String inquiry_user_name;
		private String inquiry_answer;
		private Date inquiry_answer_day;
		private String inquiry_encoding;
		
		public QnA() {
			// TODO Auto-generated constructor stub
		}

		public QnA(String inquiry_user_id, String inquiry_title, String inquiry_body, Date inquiry_question_day,
				int inquiry_no, String inquiry_category, String inquiry_user_name, String inquiry_answer,
				Date inquiry_answer_day, String inquiry_encoding) {
			super();
			this.inquiry_user_id = inquiry_user_id;
			this.inquiry_title = inquiry_title;
			this.inquiry_body = inquiry_body;
			this.inquiry_question_day = inquiry_question_day;
			this.inquiry_no = inquiry_no;
			this.inquiry_category = inquiry_category;
			this.inquiry_user_name = inquiry_user_name;
			this.inquiry_answer = inquiry_answer;
			this.inquiry_answer_day = inquiry_answer_day;
			this.inquiry_encoding = inquiry_encoding;
		}

		public String getInquiry_user_id() {
			return inquiry_user_id;
		}

		public void setInquiry_user_id(String inquiry_user_id) {
			this.inquiry_user_id = inquiry_user_id;
		}

		public String getInquiry_title() {
			return inquiry_title;
		}

		public void setInquiry_title(String inquiry_title) {
			this.inquiry_title = inquiry_title;
		}

		public String getInquiry_body() {
			return inquiry_body;
		}

		public void setInquiry_body(String inquiry_body) {
			this.inquiry_body = inquiry_body;
		}

		public Date getInquiry_question_day() {
			return inquiry_question_day;
		}

		public void setInquiry_question_day(Date inquiry_question_day) {
			this.inquiry_question_day = inquiry_question_day;
		}

		public int getInquiry_no() {
			return inquiry_no;
		}

		public void setInquiry_no(int inquiry_no) {
			this.inquiry_no = inquiry_no;
		}

		public String getInquiry_category() {
			return inquiry_category;
		}

		public void setInquiry_category(String inquiry_category) {
			this.inquiry_category = inquiry_category;
		}

		public String getInquiry_user_name() {
			return inquiry_user_name;
		}

		public void setInquiry_user_name(String inquiry_user_name) {
			this.inquiry_user_name = inquiry_user_name;
		}

		public String getInquiry_answer() {
			return inquiry_answer;
		}

		public void setInquiry_answer(String inquiry_answer) {
			this.inquiry_answer = inquiry_answer;
		}

		public Date getInquiry_answer_day() {
			return inquiry_answer_day;
		}

		public void setInquiry_answer_day(Date inquiry_answer_day) {
			this.inquiry_answer_day = inquiry_answer_day;
		}

		public String getInquiry_encoding() {
			return inquiry_encoding;
		}

		public void setInquiry_encoding(String inquiry_encoding) {
			this.inquiry_encoding = inquiry_encoding;
		}

		@Override
		public String toString() {
			return "QnA [inquiry_user_id=" + inquiry_user_id + ", inquiry_title=" + inquiry_title + ", inquiry_body="
					+ inquiry_body + ", inquiry_question_day=" + inquiry_question_day + ", inquiry_no=" + inquiry_no
					+ ", inquiry_category=" + inquiry_category + ", inquiry_user_name=" + inquiry_user_name
					+ ", inquiry_answer=" + inquiry_answer + ", inquiry_answer_day=" + inquiry_answer_day
					+ ", inquiry_encoding=" + inquiry_encoding + "]";
		}
		
		
		
		
		
		
		
		
		
		
		
		
}
