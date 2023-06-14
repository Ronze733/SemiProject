package com.semi.sh;

import java.sql.Date;

public class QnA {

		private String inquiry_user_id;
		private String inquiry_title;
		private String inquiry_body;
		private Date inquiry_question_day;
		private int inquiry_no;
		private String inquiry_category;
		
		public QnA() {
			// TODO Auto-generated constructor stub
		}

		public QnA(String inquiry_user_id, String inquiry_title, String inquiry_body, Date inquiry_question_day,
				int inquiry_no, String inquiry_category) {
			super();
			this.inquiry_user_id = inquiry_user_id;
			this.inquiry_title = inquiry_title;
			this.inquiry_body = inquiry_body;
			this.inquiry_question_day = inquiry_question_day;
			this.inquiry_no = inquiry_no;
			this.inquiry_category = inquiry_category;
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

		@Override
		public String toString() {
			return "QnA [inquiry_user_id=" + inquiry_user_id + ", inquiry_title=" + inquiry_title + ", inquiry_body="
					+ inquiry_body + ", inquiry_question_day=" + inquiry_question_day + ", inquiry_no=" + inquiry_no
					+ ", inquiry_category=" + inquiry_category + "]";
		}
		
		
}
