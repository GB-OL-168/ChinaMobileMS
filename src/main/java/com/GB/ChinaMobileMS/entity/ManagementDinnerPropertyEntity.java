package com.GB.ChinaMobileMS.entity;

import java.sql.Date;
import java.sql.Timestamp;

public class ManagementDinnerPropertyEntity {
	private int dinnerPropertyTableId;
	private String applyOrChargeUserName;
	private int branchId;
	private int companyId;
	private Date startDate;
	private Date finishDate;
	private String contactInfo;
	private int arrangePersonCount;
	private String dinnerType;
	private String addition;
	private int status;
	private Timestamp applyTime;
	
	private String companyName;
	private String branchName;
	private String applyUser;
	public int getDinnerPropertyTableId() {
		return dinnerPropertyTableId;
	}
	public void setDinnerPropertyTableId(int dinnerPropertyTableId) {
		this.dinnerPropertyTableId = dinnerPropertyTableId;
	}
	public String getApplyOrChargeUserName() {
		return applyOrChargeUserName;
	}
	public void setApplyOrChargeUserName(String applyOrChargeUserName) {
		this.applyOrChargeUserName = applyOrChargeUserName;
	}
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
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getFinishDate() {
		return finishDate;
	}
	public void setFinishDate(Date finishDate) {
		this.finishDate = finishDate;
	}
	public String getContactInfo() {
		return contactInfo;
	}
	public void setContactInfo(String contactInfo) {
		this.contactInfo = contactInfo;
	}
	public int getArrangePersonCount() {
		return arrangePersonCount;
	}
	public void setArrangePersonCount(int arrangePersonCount) {
		this.arrangePersonCount = arrangePersonCount;
	}
	public String getDinnerType() {
		return dinnerType;
	}
	public void setDinnerType(String dinnerType) {
		this.dinnerType = dinnerType;
	}
	public String getAddition() {
		return addition;
	}
	public void setAddition(String addition) {
		this.addition = addition;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Timestamp getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(Timestamp applyTime) {
		this.applyTime = applyTime;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getApplyUser() {
		return applyUser;
	}
	public void setApplyUser(String applyUser) {
		this.applyUser = applyUser;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((addition == null) ? 0 : addition.hashCode());
		result = prime * result + ((applyOrChargeUserName == null) ? 0 : applyOrChargeUserName.hashCode());
		result = prime * result + ((applyTime == null) ? 0 : applyTime.hashCode());
		result = prime * result + ((applyUser == null) ? 0 : applyUser.hashCode());
		result = prime * result + arrangePersonCount;
		result = prime * result + branchId;
		result = prime * result + ((branchName == null) ? 0 : branchName.hashCode());
		result = prime * result + companyId;
		result = prime * result + ((companyName == null) ? 0 : companyName.hashCode());
		result = prime * result + ((contactInfo == null) ? 0 : contactInfo.hashCode());
		result = prime * result + dinnerPropertyTableId;
		result = prime * result + ((dinnerType == null) ? 0 : dinnerType.hashCode());
		result = prime * result + ((finishDate == null) ? 0 : finishDate.hashCode());
		result = prime * result + ((startDate == null) ? 0 : startDate.hashCode());
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
		ManagementDinnerPropertyEntity other = (ManagementDinnerPropertyEntity) obj;
		if (addition == null) {
			if (other.addition != null)
				return false;
		} else if (!addition.equals(other.addition))
			return false;
		if (applyOrChargeUserName == null) {
			if (other.applyOrChargeUserName != null)
				return false;
		} else if (!applyOrChargeUserName.equals(other.applyOrChargeUserName))
			return false;
		if (applyTime == null) {
			if (other.applyTime != null)
				return false;
		} else if (!applyTime.equals(other.applyTime))
			return false;
		if (applyUser == null) {
			if (other.applyUser != null)
				return false;
		} else if (!applyUser.equals(other.applyUser))
			return false;
		if (arrangePersonCount != other.arrangePersonCount)
			return false;
		if (branchId != other.branchId)
			return false;
		if (branchName == null) {
			if (other.branchName != null)
				return false;
		} else if (!branchName.equals(other.branchName))
			return false;
		if (companyId != other.companyId)
			return false;
		if (companyName == null) {
			if (other.companyName != null)
				return false;
		} else if (!companyName.equals(other.companyName))
			return false;
		if (contactInfo == null) {
			if (other.contactInfo != null)
				return false;
		} else if (!contactInfo.equals(other.contactInfo))
			return false;
		if (dinnerPropertyTableId != other.dinnerPropertyTableId)
			return false;
		if (dinnerType == null) {
			if (other.dinnerType != null)
				return false;
		} else if (!dinnerType.equals(other.dinnerType))
			return false;
		if (finishDate == null) {
			if (other.finishDate != null)
				return false;
		} else if (!finishDate.equals(other.finishDate))
			return false;
		if (startDate == null) {
			if (other.startDate != null)
				return false;
		} else if (!startDate.equals(other.startDate))
			return false;
		if (status != other.status)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ManagementDinnerPropertyEntity [dinnerPropertyTableId=" + dinnerPropertyTableId
				+ ", applyOrChargeUserName=" + applyOrChargeUserName + ", branchId=" + branchId + ", companyId="
				+ companyId + ", startDate=" + startDate + ", finishDate=" + finishDate + ", contactInfo=" + contactInfo
				+ ", arrangePersonCount=" + arrangePersonCount + ", dinnerType=" + dinnerType + ", addition=" + addition
				+ ", status=" + status + ", applyTime=" + applyTime + ", companyName=" + companyName + ", branchName="
				+ branchName + ", applyUser=" + applyUser + "]";
	}
	
}
