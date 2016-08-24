package com.GB.ChinaMobileMS.entity;

public class InvestigationScoreEntitySet {
	private int scoreId;
	private int investigationItemId;
	private String investigationUserName;
	private String grade;
	private String investigationItmeName;//调查项目的名称
	private String investigationItemValue;//考评项目名称
	private String investigationStanddard;//考评标准
	private int excellent;
	private int good;
	private int bad;
	private double excellentPercentage;
	private double goodPercentage;
	private double badPercentage;
	public String getInvestigationItmeName() {
		return investigationItmeName;
	}
	public void setInvestigationItmeName(String investigationItmeName) {
		this.investigationItmeName = investigationItmeName;
	}
	public String getInvestigationItemValue() {
		return investigationItemValue;
	}
	public void setInvestigationItemValue(String investigationItemValue) {
		this.investigationItemValue = investigationItemValue;
	}
	public String getInvestigationStanddard() {
		return investigationStanddard;
	}
	public void setInvestigationStanddard(String investigationStanddard) {
		this.investigationStanddard = investigationStanddard;
	}
	public int getScoreId() {
		return scoreId;
	}
	public void setScoreId(int scoreId) {
		this.scoreId = scoreId;
	}
	public int getInvestigationItemId() {
		return investigationItemId;
	}
	public void setInvestigationItemId(int investigationItemId) {
		this.investigationItemId = investigationItemId;
	}
	public String getInvestigationUserName() {
		return investigationUserName;
	}
	public void setInvestigationUserName(String investigationUserName) {
		this.investigationUserName = investigationUserName;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getExcellent() {
		return excellent;
	}
	public void setExcellent(int excellent) {
		this.excellent = excellent;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public int getBad() {
		return bad;
	}
	public void setBad(int bad) {
		this.bad = bad;
	}
	public double getExcellentPercentage() {
		return excellentPercentage;
	}
	public void setExcellentPercentage(double excellentPercentage) {
		this.excellentPercentage = excellentPercentage;
	}
	public double getGoodPercentage() {
		return goodPercentage;
	}
	public void setGoodPercentage(double goodPercentage) {
		this.goodPercentage = goodPercentage;
	}
	public double getBadPercentage() {
		return badPercentage;
	}
	public void setBadPercentage(double badPercentage) {
		this.badPercentage = badPercentage;
	}
	
}
