package com.GB.ChinaMobileMS.entity;

public class WaitForInvestigationUserEntity {
	/**
	 * @lanyangjia
	 */
	private int waitId;
	private int investigationId;
	private String waitUserName;
	private int flag;//是否已经填写
	public int getWaitId() {
		return waitId;
	}
	public void setWaitId(int waitId) {
		this.waitId = waitId;
	}
	public int getInvestigationId() {
		return investigationId;
	}
	public void setInvestigationId(int investigationId) {
		this.investigationId = investigationId;
	}
	public String getWaitUserName() {
		return waitUserName;
	}
	public void setWaitUserName(String waitUserName) {
		this.waitUserName = waitUserName;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + flag;
		result = prime * result + investigationId;
		result = prime * result + waitId;
		result = prime * result + ((waitUserName == null) ? 0 : waitUserName.hashCode());
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
		WaitForInvestigationUserEntity other = (WaitForInvestigationUserEntity) obj;
		if (flag != other.flag)
			return false;
		if (investigationId != other.investigationId)
			return false;
		if (waitId != other.waitId)
			return false;
		if (waitUserName == null) {
			if (other.waitUserName != null)
				return false;
		} else if (!waitUserName.equals(other.waitUserName))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "WaitIdForInvestigationUserEntity [waitId=" + waitId + ", investigationId=" + investigationId
				+ ", waitUserName=" + waitUserName + ", flag=" + flag + "]";
	}
	
}
