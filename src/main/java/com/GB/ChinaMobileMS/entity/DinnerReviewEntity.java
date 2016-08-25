package com.GB.ChinaMobileMS.entity;

public class DinnerReviewEntity {
	private int dinnerReviewId;
	private int dinnerPropertyTableId;
	private int status;
	private String excutionId;
	private String stage;
	private String branchVertifyUser;
	private String companyVertifyUser;
	public int getDinnerReviewId() {
		return dinnerReviewId;
	}
	public void setDinnerReviewId(int dinnerReviewId) {
		this.dinnerReviewId = dinnerReviewId;
	}
	public int getDinnerPropertyTableId() {
		return dinnerPropertyTableId;
	}
	public void setDinnerPropertyTableId(int dinnerPropertyTableId) {
		this.dinnerPropertyTableId = dinnerPropertyTableId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getExcutionId() {
		return excutionId;
	}
	public void setExcutionId(String excutionId) {
		this.excutionId = excutionId;
	}
	public String getStage() {
		return stage;
	}
	public void setStage(String stage) {
		this.stage = stage;
	}
	public String getBranchVertifyUser() {
		return branchVertifyUser;
	}
	public void setBranchVertifyUser(String branchVertifyUser) {
		this.branchVertifyUser = branchVertifyUser;
	}
	public String getCompanyVertifyUser() {
		return companyVertifyUser;
	}
	public void setCompanyVertifyUser(String companyVertifyUser) {
		this.companyVertifyUser = companyVertifyUser;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((branchVertifyUser == null) ? 0 : branchVertifyUser.hashCode());
		result = prime * result + ((companyVertifyUser == null) ? 0 : companyVertifyUser.hashCode());
		result = prime * result + dinnerPropertyTableId;
		result = prime * result + dinnerReviewId;
		result = prime * result + ((excutionId == null) ? 0 : excutionId.hashCode());
		result = prime * result + ((stage == null) ? 0 : stage.hashCode());
		result = prime * result + status;
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
		DinnerReviewEntity other = (DinnerReviewEntity) obj;
		if (branchVertifyUser == null) {
			if (other.branchVertifyUser != null)
				return false;
		} else if (!branchVertifyUser.equals(other.branchVertifyUser))
			return false;
		if (companyVertifyUser == null) {
			if (other.companyVertifyUser != null)
				return false;
		} else if (!companyVertifyUser.equals(other.companyVertifyUser))
			return false;
		if (dinnerPropertyTableId != other.dinnerPropertyTableId)
			return false;
		if (dinnerReviewId != other.dinnerReviewId)
			return false;
		if (excutionId == null) {
			if (other.excutionId != null)
				return false;
		} else if (!excutionId.equals(other.excutionId))
			return false;
		if (stage == null) {
			if (other.stage != null)
				return false;
		} else if (!stage.equals(other.stage))
			return false;
		if (status != other.status)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "DinnerReviewEntity [dinnerReviewId=" + dinnerReviewId + ", dinnerPropertyTableId="
				+ dinnerPropertyTableId + ", status=" + status + ", excutionId=" + excutionId + ", stage=" + stage
				+ ", branchVertifyUser=" + branchVertifyUser + ", companyVertifyUser=" + companyVertifyUser + "]";
	}
	
}
