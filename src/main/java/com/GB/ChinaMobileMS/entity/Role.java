package com.GB.ChinaMobileMS.entity;

public class Role {
	
	private int roleId;
	private String roleName;
	private int  sysAccountManage=0;
	private int  sysPrivilegeSetting=0;
	private int  sysParameterSetting=0;
	private int  sysDataRestore=0;
	private int  proServerApplication=0;//服务器应用程序
	private int  proAuditingApplication=0;//审核应用
	private int  proManagementApplication=0;//管理应用程序
	private String description;
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public int getSysAccountManage() {
		return sysAccountManage;
	}
	public void setSysAccountManage(int sysAccountManage) {
		this.sysAccountManage = sysAccountManage;
	}
	public int getSysPrivilegeSetting() {
		return sysPrivilegeSetting;
	}
	public void setSysPrivilegeSetting(int sysPrivilegeSetting) {
		this.sysPrivilegeSetting = sysPrivilegeSetting;
	}
	public int getSysParameterSetting() {
		return sysParameterSetting;
	}
	public void setSysParameterSetting(int sysParameterSetting) {
		this.sysParameterSetting = sysParameterSetting;
	}
	public int getSysDataRestore() {
		return sysDataRestore;
	}
	public void setSysDataRestore(int sysDataRestore) {
		this.sysDataRestore = sysDataRestore;
	}
	public int getProServerApplication() {
		return proServerApplication;
	}
	public void setProServerApplication(int proAerverApplication) {
		this.proServerApplication = proAerverApplication;
	}
	public int getProAuditingApplication() {
		return proAuditingApplication;
	}
	public void setProAuditingApplication(int proAuditingApplication) {
		this.proAuditingApplication = proAuditingApplication;
	}
	public int getProManagementApplication() {
		return proManagementApplication;
	}
	public void setProManagementApplication(int proManagementApplication) {
		this.proManagementApplication = proManagementApplication;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((description == null) ? 0 : description.hashCode());
		result = prime * result + proServerApplication;
		result = prime * result + proAuditingApplication;
		result = prime * result + proManagementApplication;
		result = prime * result + roleId;
		result = prime * result
				+ ((roleName == null) ? 0 : roleName.hashCode());
		result = prime * result + sysAccountManage;
		result = prime * result + sysDataRestore;
		result = prime * result + sysParameterSetting;
		result = prime * result + sysPrivilegeSetting;
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
		Role other = (Role) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (proServerApplication != other.proServerApplication)
			return false;
		if (proAuditingApplication != other.proAuditingApplication)
			return false;
		if (proManagementApplication != other.proManagementApplication)
			return false;
		if (roleId != other.roleId)
			return false;
		if (roleName == null) {
			if (other.roleName != null)
				return false;
		} else if (!roleName.equals(other.roleName))
			return false;
		if (sysAccountManage != other.sysAccountManage)
			return false;
		if (sysDataRestore != other.sysDataRestore)
			return false;
		if (sysParameterSetting != other.sysParameterSetting)
			return false;
		if (sysPrivilegeSetting != other.sysPrivilegeSetting)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleName=" + roleName
				+ ", sysAccountManage=" + sysAccountManage
				+ ", sysPrivilegeSetting=" + sysPrivilegeSetting
				+ ", sysParameterSetting=" + sysParameterSetting
				+ ", sysDataRestore=" + sysDataRestore
				+ ", proServerApplication=" + proServerApplication
				+ ", proAuditingApplication=" + proAuditingApplication
				+ ", proManagementApplication=" + proManagementApplication
				+ ", description=" + description + "]";
	}
	
	

}
