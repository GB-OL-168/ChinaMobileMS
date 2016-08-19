package com.GB.ChinaMobileMS.entity;

public class BranchEntity {
	private int branchId;
	private int companyId;
	private String branchName;
	private String branchManager;
	
	public int getBranchId() {
		return branchId;
	}
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getBranchManager() {
		return branchManager;
	}
	public void setBranchManager(String branchManager) {
		this.branchManager = branchManager;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + branchId;
		result = prime * result + ((branchManager == null) ? 0 : branchManager.hashCode());
		result = prime * result + ((branchName == null) ? 0 : branchName.hashCode());
		result = prime * result + companyId;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BranchEntity other = (BranchEntity) obj;
		if (branchId != other.branchId)
			return false;
		if (branchManager == null) {
			if (other.branchManager != null)
				return false;
		} else if (!branchManager.equals(other.branchManager))
			return false;
		if (branchName == null) {
			if (other.branchName != null)
				return false;
		} else if (!branchName.equals(other.branchName))
			return false;
		if (companyId != other.companyId)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "BranchEntity [branchId=" + branchId + ", companyId=" + companyId + ", branchName=" + branchName
				+ ", branchManager=" + branchManager + "]";
	}
}
