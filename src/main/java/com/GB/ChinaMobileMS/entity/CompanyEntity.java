package com.GB.ChinaMobileMS.entity;

public class CompanyEntity {
	private int companyId;
	private String companyName;
	private String companyManager;
	
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyManager() {
		return companyManager;
	}
	public void setCompanyManager(String companyManager) {
		this.companyManager = companyManager;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + companyId;
		result = prime * result + ((companyManager == null) ? 0 : companyManager.hashCode());
		result = prime * result + ((companyName == null) ? 0 : companyName.hashCode());
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
		CompanyEntity other = (CompanyEntity) obj;
		if (companyId != other.companyId)
			return false;
		if (companyManager == null) {
			if (other.companyManager != null)
				return false;
		} else if (!companyManager.equals(other.companyManager))
			return false;
		if (companyName == null) {
			if (other.companyName != null)
				return false;
		} else if (!companyName.equals(other.companyName))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "CompanyEntity [companyId=" + companyId + ", companyName=" + companyName + ", companyManager="
				+ companyManager + "]";
	}
}
