package com.semi.jh;

public class Like {
	int likes_like_id;
	int likes_review_id;
	int likes_user_id;
	String like_status;
	
	public Like() {
		// TODO Auto-generated constructor stub
	}

	public Like(int likes_like_id, int likes_review_id, int likes_user_id, String like_status) {
		super();
		this.likes_like_id = likes_like_id;
		this.likes_review_id = likes_review_id;
		this.likes_user_id = likes_user_id;
		this.like_status = like_status;
	}

	public int getLikes_like_id() {
		return likes_like_id;
	}

	public void setLikes_like_id(int likes_like_id) {
		this.likes_like_id = likes_like_id;
	}

	public int getLikes_review_id() {
		return likes_review_id;
	}

	public void setLikes_review_id(int likes_review_id) {
		this.likes_review_id = likes_review_id;
	}

	public int getLikes_user_id() {
		return likes_user_id;
	}

	public void setLikes_user_id(int likes_user_id) {
		this.likes_user_id = likes_user_id;
	}

	public String getLike_status() {
		return like_status;
	}

	public void setLike_status(String like_status) {
		this.like_status = like_status;
	}

	@Override
	public String toString() {
		return "Like [likes_like_id=" + likes_like_id + ", likes_review_id=" + likes_review_id + ", likes_user_id="
				+ likes_user_id + ", like_status=" + like_status + "]";
	}
	
	
}
