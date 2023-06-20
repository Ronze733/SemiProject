package com.semi.mk.PlaceInfo;

public class PlaceInfo {
	private int p_id;
	private String p_name;
	private String p_category1;
	private String p_category2;
	private String p_category3;
	private String p_pic;
	private String p_explain;
	private String p_addr;
	
	public PlaceInfo() {
		// TODO Auto-generated constructor stub
	}

	public PlaceInfo(int p_id, String p_name, String p_category1, String p_category2, String p_category3, String p_pic,
			String p_explain, String p_addr) {
		super();
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_category1 = p_category1;
		this.p_category2 = p_category2;
		this.p_category3 = p_category3;
		this.p_pic = p_pic;
		this.p_explain = p_explain;
		this.p_addr = p_addr;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_category1() {
		return p_category1;
	}

	public void setP_category1(String p_category1) {
		this.p_category1 = p_category1;
	}

	public String getP_category2() {
		return p_category2;
	}

	public void setP_category2(String p_category2) {
		this.p_category2 = p_category2;
	}

	public String getP_category3() {
		return p_category3;
	}

	public void setP_category3(String p_category3) {
		this.p_category3 = p_category3;
	}

	public String getP_pic() {
		return p_pic;
	}

	public void setP_pic(String p_pic) {
		this.p_pic = p_pic;
	}

	public String getP_explain() {
		return p_explain;
	}

	public void setP_explain(String p_explain) {
		this.p_explain = p_explain;
	}

	public String getP_addr() {
		return p_addr;
	}

	public void setP_addr(String p_addr) {
		this.p_addr = p_addr;
	}
	
	
	
}
