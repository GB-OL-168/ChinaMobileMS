package com.GB.ChinaMobileMS.entity;

public class ReviewEntity {
	
	private int reviewId;
	private int propertyTableId;
	private int status;
	private String excutionId;
	private String stage;
	private String vertifyUser;
	private String flowInfo;
	
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public int getPropertyTableId() {
		return propertyTableId;
	}
	public void setPropertyTableId(int propertyTableId) {
		this.propertyTableId = propertyTableId;
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
	public String getVertifyUser() {
		return vertifyUser;
	}
	public void setVertifyUser(String vertifyUser) {
		this.vertifyUser = vertifyUser;
	}
	public String getFlowInfo() {
		return flowInfo;
	}
	public void setFlowInfo(String flowInfo) {
		this.flowInfo = flowInfo;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((excutionId == null) ? 0 : excutionId.hashCode());
		result = prime * result + ((flowInfo == null) ? 0 : flowInfo.hashCode());
		result = prime * result + propertyTableId;
		result = prime * result + reviewId;
		result = prime * result + ((stage == null) ? 0 : stage.hashCode());
		result = prime * result + status;
		result = prime * result + ((vertifyUser == null) ? 0 : vertifyUser.hashCode());
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
		ReviewEntity other = (ReviewEntity) obj;
		if (excutionId == null) {
			if (other.excutionId != null)
				return false;
		} else if (!excutionId.equals(other.excutionId))
			return false;
		if (flowInfo == null) {
			if (other.flowInfo != null)
				return false;
		} else if (!flowInfo.equals(other.flowInfo))
			return false;
		if (propertyTableId != other.propertyTableId)
			return false;
		if (reviewId != other.reviewId)
			return false;
		if (stage == null) {
			if (other.stage != null)
				return false;
		} else if (!stage.equals(other.stage))
			return false;
		if (status != other.status)
			return false;
		if (vertifyUser == null) {
			if (other.vertifyUser != null)
				return false;
		} else if (!vertifyUser.equals(other.vertifyUser))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ReviewEntity [reviewId=" + reviewId + ", propertyTableId=" + propertyTableId + ", status=" + status
				+ ", excutionId=" + excutionId + ", stage=" + stage + ", vertifyUser=" + vertifyUser + ", flowInfo="
				+ flowInfo + "]";
	}
	
}
