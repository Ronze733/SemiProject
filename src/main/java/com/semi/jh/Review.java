package com.semi.jh;

import java.sql.Date;

public class Review {
	private int review_id;
	private String review_user_id;
	private String review_place;
	private String review_title;
	private Date review_create_at;
	private String review_pic;
	private int review_likes;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public int getReview_id() {
		return review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}

	public String getReview_user_id() {
		return review_user_id;
	}

	public void setReview_user_id(String review_user_id) {
		this.review_user_id = review_user_id;
	}

	public String getReview_place() {
		return review_place;
	}

	public void setReview_place(String review_place) {
		this.review_place = review_place;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public Date getReview_create_at() {
		return review_create_at;
	}

	public void setReview_create_at(Date review_create_at) {
		this.review_create_at = review_create_at;
	}

	public String getReview_pic() {
		return review_pic;
	}

	public void setReview_pic(String review_pic) {
		this.review_pic = review_pic;
	}

	public int getReview_likes() {
		return review_likes;
	}

	public void setReview_likes(int review_likes) {
		this.review_likes = review_likes;
	}

	public Review(int review_id, String review_user_id, String review_place, String review_title, Date review_create_at,
			String review_pic, int review_likes) {
		super();
		this.review_id = review_id;
		this.review_user_id = review_user_id;
		this.review_place = review_place;
		this.review_title = review_title;
		this.review_create_at = review_create_at;
		this.review_pic = review_pic;
		this.review_likes = review_likes;
	}

	@Override
	public String toString() {
		return "Review [review_id=" + review_id + ", review_user_id=" + review_user_id + ", review_place="
				+ review_place + ", review_title=" + review_title + ", review_create_at=" + review_create_at
				+ ", review_pic=" + review_pic + ", review_likes=" + review_likes + "]";
	}
	
	
}
