package com.GB.ChinaMobileMS.entity;

public class InvestigationTableEntitySet {
	private String investigationTableName;
	private int status;
	private String createStaff;
	private String recoveryTime;
	private int isFill;
	private int investigationId;
	
	public int getInvestigationId() {
		return investigationId;
	}
	public void setInvestigationId(int investigationId) {
		this.investigationId = investigationId;
	}
	public int getIsFill() {
		return isFill;
	}
	public void setIsFill(int isFill) {
		this.isFill = isFill;
	}
	public String getInvestigationTableName() {
		return investigationTableName;
	}
	public void setInvestigationTableName(String investigationTableName) {
		this.investigationTableName = investigationTableName;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getCreateStaff() {
		return createStaff;
	}
	public void setCreateStaff(String createStaff) {
		this.createStaff = createStaff;
	}
	public String getRecoveryTime() {
		return recoveryTime;
	}
	public void setRecoveryTime(String recoveryTime) {
		this.recoveryTime = recoveryTime;
	}

	
}
