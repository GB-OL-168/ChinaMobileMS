package com.GB.ChinaMobileMS.entity;

public class DriverInfoEntity {
	private int driverId;
	private String name;
	private int sex;
	private String birthday;
	private String driveYear;
	private String education;
	private String origin;
	private String serviceUnit;
	private String identification;
	private String contactInfo;
	private String homeAddress;
	private String addition;
	public int getDriverId() {
		return driverId;
	}
	public void setDriverId(int driverId) {
		this.driverId = driverId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getDriveYear() {
		return driveYear;
	}
	public void setDriveYear(String driveYear) {
		this.driveYear = driveYear;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getServiceUnit() {
		return serviceUnit;
	}
	public void setServiceUnit(String serviceUnit) {
		this.serviceUnit = serviceUnit;
	}
	public String getIdentification() {
		return identification;
	}
	public void setIdentification(String identification) {
		this.identification = identification;
	}
	public String getContactInfo() {
		return contactInfo;
	}
	public void setContactInfo(String contactInfo) {
		this.contactInfo = contactInfo;
	}
	public String getHomeAddress() {
		return homeAddress;
	}
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	public String getAddition() {
		return addition;
	}
	public void setAddition(String addition) {
		this.addition = addition;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((addition == null) ? 0 : addition.hashCode());
		result = prime * result + ((birthday == null) ? 0 : birthday.hashCode());
		result = prime * result + ((contactInfo == null) ? 0 : contactInfo.hashCode());
		result = prime * result + ((driveYear == null) ? 0 : driveYear.hashCode());
		result = prime * result + driverId;
		result = prime * result + ((education == null) ? 0 : education.hashCode());
		result = prime * result + ((homeAddress == null) ? 0 : homeAddress.hashCode());
		result = prime * result + ((identification == null) ? 0 : identification.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((origin == null) ? 0 : origin.hashCode());
		result = prime * result + ((serviceUnit == null) ? 0 : serviceUnit.hashCode());
		result = prime * result + sex;
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
		DriverInfoEntity other = (DriverInfoEntity) obj;
		if (addition == null) {
			if (other.addition != null)
				return false;
		} else if (!addition.equals(other.addition))
			return false;
		if (birthday == null) {
			if (other.birthday != null)
				return false;
		} else if (!birthday.equals(other.birthday))
			return false;
		if (contactInfo == null) {
			if (other.contactInfo != null)
				return false;
		} else if (!contactInfo.equals(other.contactInfo))
			return false;
		if (driveYear == null) {
			if (other.driveYear != null)
				return false;
		} else if (!driveYear.equals(other.driveYear))
			return false;
		if (driverId != other.driverId)
			return false;
		if (education == null) {
			if (other.education != null)
				return false;
		} else if (!education.equals(other.education))
			return false;
		if (homeAddress == null) {
			if (other.homeAddress != null)
				return false;
		} else if (!homeAddress.equals(other.homeAddress))
			return false;
		if (identification == null) {
			if (other.identification != null)
				return false;
		} else if (!identification.equals(other.identification))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (origin == null) {
			if (other.origin != null)
				return false;
		} else if (!origin.equals(other.origin))
			return false;
		if (serviceUnit == null) {
			if (other.serviceUnit != null)
				return false;
		} else if (!serviceUnit.equals(other.serviceUnit))
			return false;
		if (sex != other.sex)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "DriverInfo [driverId=" + driverId + ", name=" + name + ", sex=" + sex + ", birthday=" + birthday
				+ ", driveYear=" + driveYear + ", education=" + education + ", origin=" + origin + ", serviceUnit="
				+ serviceUnit + ", identification=" + identification + ", contactInfo=" + contactInfo + ", homeAddress="
				+ homeAddress + ", addition=" + addition + "]";
	}
	
}
