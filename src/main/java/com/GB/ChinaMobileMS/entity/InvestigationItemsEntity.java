package com.GB.ChinaMobileMS.entity;

public class InvestigationItemsEntity {
	/**
	 * 物业服务调查表格实体
	 */
	private int investigationItemId;//调查项目的id
	private int investigationId;//表格的id
	private String investigationItmeName;//调查项目的名称
	private String investigationItemValue;//考评项目名称
	private String investigationStanddard;//考评标准
	private int status;
	private String grade;
	public int getInvestigationItemId() {
		return investigationItemId;
	}
	public void setInvestigationItemId(int investigationItemId) {
		this.investigationItemId = investigationItemId;
	}
	public int getInvestigationId() {
		return investigationId;
	}
	public void setInvestigationId(int investigationId) {
		this.investigationId = investigationId;
	}
	public String getInvestigationItmeName() {
		return investigationItmeName;
	}
	public void setInvestigationItmeName(String investigationItmeName) {
		this.investigationItmeName = investigationItmeName;
	}
	public String getInvestigationItemValue() {
		return investigationItemValue;
	}
	public void setInvestigationItemValue(String investigationItemValue) {
		this.investigationItemValue = investigationItemValue;
	}
	public String getInvestigationStanddard() {
		return investigationStanddard;
	}
	public void setInvestigationStanddard(String investigationStanddard) {
		this.investigationStanddard = investigationStanddard;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
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
		result = prime * result + ((grade == null) ? 0 : grade.hashCode());
		result = prime * result + investigationId;
		result = prime * result + investigationItemId;
		result = prime * result + ((investigationItemValue == null) ? 0 : investigationItemValue.hashCode());
		result = prime * result + ((investigationItmeName == null) ? 0 : investigationItmeName.hashCode());
		result = prime * result + ((investigationStanddard == null) ? 0 : investigationStanddard.hashCode());
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
		InvestigationItemsEntity other = (InvestigationItemsEntity) obj;
		if (grade == null) {
			if (other.grade != null)
				return false;
		} else if (!grade.equals(other.grade))
			return false;
		if (investigationId != other.investigationId)
			return false;
		if (investigationItemId != other.investigationItemId)
			return false;
		if (investigationItemValue == null) {
			if (other.investigationItemValue != null)
				return false;
		} else if (!investigationItemValue.equals(other.investigationItemValue))
			return false;
		if (investigationItmeName == null) {
			if (other.investigationItmeName != null)
				return false;
		} else if (!investigationItmeName.equals(other.investigationItmeName))
			return false;
		if (investigationStanddard == null) {
			if (other.investigationStanddard != null)
				return false;
		} else if (!investigationStanddard.equals(other.investigationStanddard))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "InvestigationItemsEntity [investigationItemId=" + investigationItemId + ", investigationId="
				+ investigationId + ", investigationItmeName=" + investigationItmeName + ", investigationItemValue="
				+ investigationItemValue + ", investigationStanddard=" + investigationStanddard + ", grade=" + grade
				+ "]";
	}
	


	
}
