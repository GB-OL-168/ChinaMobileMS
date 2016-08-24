package com.GB.ChinaMobileMS.entity;

public class InvestigationTableEntity {
	/**
	 * 物业服务考评表
	 */
	private int investigationId;//表格的ID
	private int serviceCompanyId;//服务公司的ID
	private String investigationName;//表格名称？
	private int status;//状态
	private String recoveryTime;//回收时间
	private String createStaff;
	private int isFill;//是否已经填写
	public int getInvestigationId() {
		return investigationId;
	}
	public void setInvestigationId(int investigationId) {
		this.investigationId = investigationId;
	}
	public int getServiceCompanyId() {
		return serviceCompanyId;
	}
	public void setServiceCompanyId(int serviceCompanyId) {
		this.serviceCompanyId = serviceCompanyId;
	}
	public String getInvestigationName() {
		return investigationName;
	}
	public void setInvestigationName(String investigationName) {
		this.investigationName = investigationName;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getRecoveryTime() {
		return recoveryTime;
	}
	public void setRecoveryTime(String recoveryTime) {
		this.recoveryTime = recoveryTime;
	}
	public String getCreateStaff() {
		return createStaff;
	}
	public void setCreateStaff(String createStaff) {
		this.createStaff = createStaff;
	}
	public int getIsFill() {
		return isFill;
	}
	public void setIsFill(int isFill) {
		this.isFill = isFill;
	}
	
	
}
