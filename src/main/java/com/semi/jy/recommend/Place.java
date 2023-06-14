package com.semi.jy.recommend;

public class Place {
	private int place_id;
	private String place_name;
	private String place_addr;
	private String place_category1;
	private String place_category2;
	private String place_category3;
	private String place_explain;
	private String place_pic;

	public Place() {
		// TODO Auto-generated constructor stub
	}

	public Place(int place_id, String place_name, String place_addr, String place_category1, String place_category2,
			String place_category3, String place_explain, String place_pic) {
		super();
		this.place_id = place_id;
		this.place_name = place_name;
		this.place_addr = place_addr;
		this.place_category1 = place_category1;
		this.place_category2 = place_category2;
		this.place_category3 = place_category3;
		this.place_explain = place_explain;
		this.place_pic = place_pic;
	}

	public int getPlace_id() {
		return place_id;
	}

	public void setPlace_id(int place_id) {
		this.place_id = place_id;
	}

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getPlace_addr() {
		return place_addr;
	}

	public void setPlace_addr(String place_addr) {
		this.place_addr = place_addr;
	}

	public String getPlace_category1() {
		return place_category1;
	}

	public void setPlace_category1(String place_category1) {
		this.place_category1 = place_category1;
	}

	public String getPlace_category2() {
		return place_category2;
	}

	public void setPlace_category2(String place_category2) {
		this.place_category2 = place_category2;
	}

	public String getPlace_category3() {
		return place_category3;
	}

	public void setPlace_category3(String place_category3) {
		this.place_category3 = place_category3;
	}

	public String getPlace_explain() {
		return place_explain;
	}

	public void setPlace_explain(String place_explain) {
		this.place_explain = place_explain;
	}

	public String getPlace_pic() {
		return place_pic;
	}

	public void setPlace_pic(String place_pic) {
		this.place_pic = place_pic;
	}

	@Override
	public String toString() {
		return "Place [place_id=" + place_id + ", place_name=" + place_name + ", place_addr=" + place_addr
				+ ", place_category1=" + place_category1 + ", place_category2=" + place_category2 + ", place_category3="
				+ place_category3 + ", place_explain=" + place_explain + ", place_pic=" + place_pic + "]";
	}
	
}
