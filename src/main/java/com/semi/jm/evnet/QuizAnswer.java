package com.semi.jm.evnet;

public class QuizAnswer {
	private int spaceNum;
	private String spaceName;
	
	public QuizAnswer() {
		// TODO Auto-generated constructor stub
	}

	public QuizAnswer(int spaceNum, String spaceName) {
		super();
		this.spaceNum = spaceNum;
		this.spaceName = spaceName;
	}

	public int getSpaceNum() {
		return spaceNum;
	}

	public void setSpaceNum(int spaceNum) {
		this.spaceNum = spaceNum;
	}

	public String getSpaceName() {
		return spaceName;
	}

	public void setSpaceName(String spaceName) {
		this.spaceName = spaceName;
	}
	
}
