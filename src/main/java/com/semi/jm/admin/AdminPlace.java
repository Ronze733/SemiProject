package com.semi.jm.admin;

public class AdminPlace {
	private String placeName;
	private String placeAddr;
	private String placeCategory1;
	private String placeCategory2;
	private String placeCategory3;
	private String placeExplain;
	private String placePic;
	private String placeAddr2;
	
	public AdminPlace() {
		// TODO Auto-generated constructor stub
	}

	public AdminPlace(String placeName, String placeAddr, String placeCategory1, String placeCategory2,
			String placeCategory3, String placeExplain, String placePic, String placeAddr2) {
		super();
		this.placeName = placeName;
		this.placeAddr = placeAddr;
		this.placeCategory1 = placeCategory1;
		this.placeCategory2 = placeCategory2;
		this.placeCategory3 = placeCategory3;
		this.placeExplain = placeExplain;
		this.placePic = placePic;
		this.placeAddr2 = placeAddr2;
	}

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getPlaceAddr() {
		return placeAddr;
	}

	public void setPlaceAddr(String placeAddr) {
		this.placeAddr = placeAddr;
	}

	public String getPlaceCategory1() {
		return placeCategory1;
	}

	public void setPlaceCategory1(String placeCategory1) {
		this.placeCategory1 = placeCategory1;
	}

	public String getPlaceCategory2() {
		return placeCategory2;
	}

	public void setPlaceCategory2(String placeCategory2) {
		this.placeCategory2 = placeCategory2;
	}

	public String getPlaceCategory3() {
		return placeCategory3;
	}

	public void setPlaceCategory3(String placeCategory3) {
		this.placeCategory3 = placeCategory3;
	}

	public String getPlaceExplain() {
		return placeExplain;
	}

	public void setPlaceExplain(String placeExplain) {
		this.placeExplain = placeExplain;
	}

	public String getPlacePic() {
		return placePic;
	}

	public void setPlacePic(String placePic) {
		this.placePic = placePic;
	}

	public String getPlaceAddr2() {
		return placeAddr2;
	}

	public void setPlaceAddr2(String placeAddr2) {
		this.placeAddr2 = placeAddr2;
	}
	
}
