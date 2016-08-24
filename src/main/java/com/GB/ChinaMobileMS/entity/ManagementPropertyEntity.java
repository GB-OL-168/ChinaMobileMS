package com.GB.ChinaMobileMS.entity;

import java.sql.Date;
import java.sql.Timestamp;

public class ManagementPropertyEntity {
	private Timestamp applyTime;
	private Date serviceDate;
	private String serviceLocation;
	private String companyName;
	private String branchName;
	private String applyUser;
	private String contactInfo;
	private int status;
	private String diningService;
	private String receptionService;
	private String enviromentMaintain;
	private String engineeringManage;
	private String firefightingManage;
	private String serviceCommand;
	private String addition;
	
	
	public String getDiningService() {
		return diningService;
	}
	public void setDiningService(String diningService) {
		this.diningService = diningService;
	}
	public String getReceptionService() {
		return receptionService;
	}
	public void setReceptionService(String receptionService) {
		this.receptionService = receptionService;
	}
	public String getEnviromentMaintain() {
		return enviromentMaintain;
	}
	public void setEnviromentMaintain(String enviromentMaintain) {
		this.enviromentMaintain = enviromentMaintain;
	}
	public String getEngineeringManage() {
		return engineeringManage;
	}
	public void setEngineeringManage(String engineeringManage) {
		this.engineeringManage = engineeringManage;
	}
	public String getFirefightingManage() {
		return firefightingManage;
	}
	public void setFirefightingManage(String firefightingManage) {
		this.firefightingManage = firefightingManage;
	}
	public String getServiceCommand() {
		return serviceCommand;
	}
	public void setServiceCommand(String serviceCommand) {
		this.serviceCommand = serviceCommand;
	}
	public String getAddition() {
		return addition;
	}
	public void setAddition(String addition) {
		this.addition = addition;
	}
	public Timestamp getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(Timestamp applyTime) {
		this.applyTime = applyTime;
	}
	public Date getServiceDate() {
		return serviceDate;
	}
	public void setServiceDate(Date serviceDate) {
		this.serviceDate = serviceDate;
	}
	public String getServiceLocation() {
		return serviceLocation;
	}
	public void setServiceLocation(String serviceLocation) {
		this.serviceLocation = serviceLocation;
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
	public String getContactInfo() {
		return contactInfo;
	}
	public void setContactInfo(String contactInfo) {
		this.contactInfo = contactInfo;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((addition == null) ? 0 : addition.hashCode());
		result = prime * result + ((applyTime == null) ? 0 : applyTime.hashCode());
		result = prime * result + ((applyUser == null) ? 0 : applyUser.hashCode());
		result = prime * result + ((branchName == null) ? 0 : branchName.hashCode());
		result = prime * result + ((companyName == null) ? 0 : companyName.hashCode());
		result = prime * result + ((contactInfo == null) ? 0 : contactInfo.hashCode());
		result = prime * result + ((diningService == null) ? 0 : diningService.hashCode());
		result = prime * result + ((engineeringManage == null) ? 0 : engineeringManage.hashCode());
		result = prime * result + ((enviromentMaintain == null) ? 0 : enviromentMaintain.hashCode());
		result = prime * result + ((firefightingManage == null) ? 0 : firefightingManage.hashCode());
		result = prime * result + ((receptionService == null) ? 0 : receptionService.hashCode());
		result = prime * result + ((serviceCommand == null) ? 0 : serviceCommand.hashCode());
		result = prime * result + ((serviceDate == null) ? 0 : serviceDate.hashCode());
		result = prime * result + ((serviceLocation == null) ? 0 : serviceLocation.hashCode());
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
		ManagementPropertyEntity other = (ManagementPropertyEntity) obj;
		if (addition == null) {
			if (other.addition != null)
				return false;
		} else if (!addition.equals(other.addition))
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
		if (branchName == null) {
			if (other.branchName != null)
				return false;
		} else if (!branchName.equals(other.branchName))
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
		if (diningService == null) {
			if (other.diningService != null)
				return false;
		} else if (!diningService.equals(other.diningService))
			return false;
		if (engineeringManage == null) {
			if (other.engineeringManage != null)
				return false;
		} else if (!engineeringManage.equals(other.engineeringManage))
			return false;
		if (enviromentMaintain == null) {
			if (other.enviromentMaintain != null)
				return false;
		} else if (!enviromentMaintain.equals(other.enviromentMaintain))
			return false;
		if (firefightingManage == null) {
			if (other.firefightingManage != null)
				return false;
		} else if (!firefightingManage.equals(other.firefightingManage))
			return false;
		if (receptionService == null) {
			if (other.receptionService != null)
				return false;
		} else if (!receptionService.equals(other.receptionService))
			return false;
		if (serviceCommand == null) {
			if (other.serviceCommand != null)
				return false;
		} else if (!serviceCommand.equals(other.serviceCommand))
			return false;
		if (serviceDate == null) {
			if (other.serviceDate != null)
				return false;
		} else if (!serviceDate.equals(other.serviceDate))
			return false;
		if (serviceLocation == null) {
			if (other.serviceLocation != null)
				return false;
		} else if (!serviceLocation.equals(other.serviceLocation))
			return false;
		if (status != other.status)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ManagementPropertyEntity [applyTime=" + applyTime + ", serviceDate=" + serviceDate
				+ ", serviceLocation=" + serviceLocation + ", companyName=" + companyName + ", branchName=" + branchName
				+ ", applyUser=" + applyUser + ", contactInfo=" + contactInfo + ", status=" + status
				+ ", diningService=" + diningService + ", receptionService=" + receptionService
				+ ", enviromentMaintain=" + enviromentMaintain + ", engineeringManage=" + engineeringManage
				+ ", firefightingManage=" + firefightingManage + ", serviceCommand=" + serviceCommand + ", addition="
				+ addition + "]";
	}
	
}
