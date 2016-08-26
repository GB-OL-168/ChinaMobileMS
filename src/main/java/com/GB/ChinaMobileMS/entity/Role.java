package com.GB.ChinaMobileMS.entity;

public class Role {
	
	private int roleId;
	private String roleName;
	private int  sysAccountManage=0;
	private int  sysPrivilegeSetting=0;
	private int  sysParameterSetting=0;
	private int  sysDataRestore=0;
	private int  serverApplicationDinner=0;
	private int  serverApplicationProperty=0;
	private int  auditingApplicationDinner=0;
	private int  auditingApplicationProperty=0;
	private int  managementApplicationDinner=0;
	private int  managementApplicationProperty=0;
	private int  queryVehicle=0;
	private int  queryAsset=0;
	private int  registerVehicle=0;
	private int  registerAsset=0;
	private int  mangaementAsset=0;
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
	public int getServerApplicationDinner() {
		return serverApplicationDinner;
	}
	public void setServerApplicationDinner(int serverApplicationDinner) {
		this.serverApplicationDinner = serverApplicationDinner;
	}
	public int getServerApplicationProperty() {
		return serverApplicationProperty;
	}
	public void setServerApplicationProperty(int serverApplicationProperty) {
		this.serverApplicationProperty = serverApplicationProperty;
	}
	public int getAuditingApplicationDinner() {
		return auditingApplicationDinner;
	}
	public void setAuditingApplicationDinner(int auditingApplicationDinner) {
		this.auditingApplicationDinner = auditingApplicationDinner;
	}
	public int getAuditingApplicationProperty() {
		return auditingApplicationProperty;
	}
	public void setAuditingApplicationProperty(int auditingApplicationProperty) {
		this.auditingApplicationProperty = auditingApplicationProperty;
	}
	public int getManagementApplicationDinner() {
		return managementApplicationDinner;
	}
	public void setManagementApplicationDinner(int managementApplicationDinner) {
		this.managementApplicationDinner = managementApplicationDinner;
	}
	public int getManagementApplicationProperty() {
		return managementApplicationProperty;
	}
	public void setManagementApplicationProperty(int managementApplicationProperty) {
		this.managementApplicationProperty = managementApplicationProperty;
	}
	public int getQueryVehicle() {
		return queryVehicle;
	}
	public void setQueryVehicle(int queryVehicle) {
		this.queryVehicle = queryVehicle;
	}
	public int getQueryAsset() {
		return queryAsset;
	}
	public void setQueryAsset(int queryAsset) {
		this.queryAsset = queryAsset;
	}
	public int getRegisterVehicle() {
		return registerVehicle;
	}
	public void setRegisterVehicle(int registerVehicle) {
		this.registerVehicle = registerVehicle;
	}
	public int getRegisterAsset() {
		return registerAsset;
	}
	public void setRegisterAsset(int registerAsset) {
		this.registerAsset = registerAsset;
	}
	public int getMangaementAsset() {
		return mangaementAsset;
	}
	public void setMangaementAsset(int mangaementAsset) {
		this.mangaementAsset = mangaementAsset;
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
		result = prime * result + auditingApplicationDinner;
		result = prime * result + auditingApplicationProperty;
		result = prime * result
				+ ((description == null) ? 0 : description.hashCode());
		result = prime * result + managementApplicationDinner;
		result = prime * result + managementApplicationProperty;
		result = prime * result + mangaementAsset;
		result = prime * result + queryAsset;
		result = prime * result + queryVehicle;
		result = prime * result + registerAsset;
		result = prime * result + registerVehicle;
		result = prime * result + roleId;
		result = prime * result
				+ ((roleName == null) ? 0 : roleName.hashCode());
		result = prime * result + serverApplicationDinner;
		result = prime * result + serverApplicationProperty;
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
		if (auditingApplicationDinner != other.auditingApplicationDinner)
			return false;
		if (auditingApplicationProperty != other.auditingApplicationProperty)
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (managementApplicationDinner != other.managementApplicationDinner)
			return false;
		if (managementApplicationProperty != other.managementApplicationProperty)
			return false;
		if (mangaementAsset != other.mangaementAsset)
			return false;
		if (queryAsset != other.queryAsset)
			return false;
		if (queryVehicle != other.queryVehicle)
			return false;
		if (registerAsset != other.registerAsset)
			return false;
		if (registerVehicle != other.registerVehicle)
			return false;
		if (roleId != other.roleId)
			return false;
		if (roleName == null) {
			if (other.roleName != null)
				return false;
		} else if (!roleName.equals(other.roleName))
			return false;
		if (serverApplicationDinner != other.serverApplicationDinner)
			return false;
		if (serverApplicationProperty != other.serverApplicationProperty)
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
				+ ", sysDataRestore=" + sysDataRestore + ", serverApplication="
				+ serverApplicationDinner + ", serverApplicationProperty="
				+ serverApplicationProperty + ", auditingApplicationDinner="
				+ auditingApplicationDinner + ", auditingApplicationProperty="
				+ auditingApplicationProperty
				+ ", managementApplicationDinner="
				+ managementApplicationDinner
				+ ", managementApplicationProperty="
				+ managementApplicationProperty + ", queryVehicle="
				+ queryVehicle + ", queryAsset=" + queryAsset
				+ ", registerVehicle=" + registerVehicle + ", registerAsset="
				+ registerAsset + ", mangaementAsset=" + mangaementAsset
				+ ", description=" + description + "]";
	}
	
}
