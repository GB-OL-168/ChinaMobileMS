package com.GB.ChinaMobileMS.entity;

import java.sql.Date;
import java.sql.Timestamp;

public class PropertyServiceEntity {
	private int propertyTableId;
	private String applyUserName;
	private int companyId;
	private int branchId;
	private String diningService;
	private String receptionService;
	private String enviromentMaintain;
	private String engineeringManage;
	private String firefightingManage;
	private String olderMantain;
	private int serviceId;
	private String contactInfo;
	private Date serviceDate;
	private String serviceLocation;
	private String serviceCommand;
	private String addition;
	private int gotId;
	private Timestamp applyTime;
	private String concreteTime;

	private int status;
	private String temporaryDemand;

	public int getPropertyTableId() {
		return propertyTableId;
	}
	public void setPropertyTableId(int propertyTableId) {
		this.propertyTableId = propertyTableId;
	}
	public String getApplyUserName() {
		return applyUserName;
	}
	public void setApplyUserName(String applyUserName) {
		this.applyUserName = applyUserName;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public int getBranchId() {
		return branchId;
	}
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
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
	public String getOlderMantain() {
		return olderMantain;
	}
	public void setOlderMantain(String olderMantain) {
		this.olderMantain = olderMantain;
	}
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public String getContactInfo() {
		return contactInfo;
	}
	public void setContactInfo(String contactInfo) {
		this.contactInfo = contactInfo;
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
	public int getGotId() {
		return gotId;
	}
	public void setGotId(int gotId) {
		this.gotId = gotId;
	}
	
	public Timestamp getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(Timestamp applyTime) {
		this.applyTime = applyTime;
	}
	public String getConcreteTime() {
		return concreteTime;
	}
	public void setConcreteTime(String concreteTime) {
		this.concreteTime = concreteTime;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getTemporaryDemand() {
		return temporaryDemand;
	}
	public void setTemporaryDemand(String temporaryDemand) {
		this.temporaryDemand = temporaryDemand;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((addition == null) ? 0 : addition.hashCode());
		result = prime * result + ((applyUserName == null) ? 0 : applyUserName.hashCode());
		result = prime * result + branchId;
		result = prime * result + companyId;
		result = prime * result + ((contactInfo == null) ? 0 : contactInfo.hashCode());
		result = prime * result + ((diningService == null) ? 0 : diningService.hashCode());
		result = prime * result + ((engineeringManage == null) ? 0 : engineeringManage.hashCode());
		result = prime * result + ((enviromentMaintain == null) ? 0 : enviromentMaintain.hashCode());
		result = prime * result + ((firefightingManage == null) ? 0 : firefightingManage.hashCode());
		result = prime * result + gotId;
		result = prime * result + ((olderMantain == null) ? 0 : olderMantain.hashCode());
		result = prime * result + propertyTableId;
		result = prime * result + ((receptionService == null) ? 0 : receptionService.hashCode());
		result = prime * result + ((serviceCommand == null) ? 0 : serviceCommand.hashCode());
		result = prime * result + ((serviceDate == null) ? 0 : serviceDate.hashCode());
		result = prime * result + serviceId;
		result = prime * result + ((serviceLocation == null) ? 0 : serviceLocation.hashCode());
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
		PropertyServiceEntity other = (PropertyServiceEntity) obj;
		if (addition == null) {
			if (other.addition != null)
				return false;
		} else if (!addition.equals(other.addition))
			return false;
		if (applyUserName == null) {
			if (other.applyUserName != null)
				return false;
		} else if (!applyUserName.equals(other.applyUserName))
			return false;
		if (branchId != other.branchId)
			return false;
		if (companyId != other.companyId)
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
		if (gotId != other.gotId)
			return false;
		if (olderMantain == null) {
			if (other.olderMantain != null)
				return false;
		} else if (!olderMantain.equals(other.olderMantain))
			return false;
		if (propertyTableId != other.propertyTableId)
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
		if (serviceId != other.serviceId)
			return false;
		if (serviceLocation == null) {
			if (other.serviceLocation != null)
				return false;
		} else if (!serviceLocation.equals(other.serviceLocation))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "PropertyService [propertyTableId=" + propertyTableId + ", applyUserName=" + applyUserName
				+ ", companyId=" + companyId + ", branchId=" + branchId + ", diningService=" + diningService
				+ ", receptionService=" + receptionService + ", enviromentMaintain=" + enviromentMaintain
				+ ", engineeringManage=" + engineeringManage + ", firefightingManage=" + firefightingManage
				+ ", olderMantain=" + olderMantain + ", serviceId=" + serviceId + ", contactInfo=" + contactInfo
				+ ", serviceDate=" + serviceDate + ", serviceLocation=" + serviceLocation + ", serviceCommand="
				+ serviceCommand + ", addition=" + addition + ", gotId=" + gotId + "]";
	}
	
}
