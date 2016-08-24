package com.GB.ChinaMobileMS.entity;

public class InvestigationScoreEntity {
	private int scoreId;
	private int investigationItemId;
	private String investigationUserName;
	private String grade;
	public int getScoreId() {
		return scoreId;
	}
	public void setScoreId(int scoreId) {
		this.scoreId = scoreId;
	}
	public int getInvestigationItemId() {
		return investigationItemId;
	}
	public void setInvestigationItemId(int investigationItemId) {
		this.investigationItemId = investigationItemId;
	}
	public String getInvestigationUserName() {
		return investigationUserName;
	}
	public void setInvestigationUserName(String investigationUserName) {
		this.investigationUserName = investigationUserName;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((grade == null) ? 0 : grade.hashCode());
		result = prime * result + investigationItemId;
		result = prime * result + ((investigationUserName == null) ? 0 : investigationUserName.hashCode());
		result = prime * result + scoreId;
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
		InvestigationScoreEntity other = (InvestigationScoreEntity) obj;
		if (grade == null) {
			if (other.grade != null)
				return false;
		} else if (!grade.equals(other.grade))
			return false;
		if (investigationItemId != other.investigationItemId)
			return false;
		if (investigationUserName == null) {
			if (other.investigationUserName != null)
				return false;
		} else if (!investigationUserName.equals(other.investigationUserName))
			return false;
		if (scoreId != other.scoreId)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "InvestigationScoreEntity [scoreId=" + scoreId + ", investigationItemId=" + investigationItemId
				+ ", investigationUserName=" + investigationUserName + ", grade=" + grade + "]";
	}
	
}
