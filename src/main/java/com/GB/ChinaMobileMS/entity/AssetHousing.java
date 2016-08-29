package com.GB.ChinaMobileMS.entity;

import java.sql.Date;

public class AssetHousing {
	private int  assetInfoId;//房屋编号
	private int  usedBranchId;//使用单位名称
	private int  buildingArea;//建筑面积
    private String location;//坐落地点
	private int  roomCount;//房屋间数
	private String structureType;//结构类型
	private String buildingName;//建筑名称
	private String roomUsage;//房屋用途
	private String addition;//建成年份
	private String remark;//备注说明
	private int  isLoan;//是否租贷
	private String loanSource;//租贷来源
	private Date loanTimeStart = null;//租贷时间段
	private Date loanTimeEnd = null;
	private int floorCount;//层数
	private int Furniture;
	
	public int getFurniture() {
		return Furniture;
	}
	public void setFurniture(int furniture) {
		Furniture = furniture;
	}
	private String companyName= null;
	private int companyId ;
	public int getFloorCount() {
		return floorCount;
	}
	public void setFloorCount(int floorCount) {
		this.floorCount = floorCount;
	}
	public int getAssetInfoId() {
		return assetInfoId;
	}
	public void setAssetInfoId(int assetInfoId) {
		this.assetInfoId = assetInfoId;
	}
	public int getUsedBranchId() {
		return usedBranchId;
	}
	public void setUsedBranchId(int usedBranchId) {
		this.usedBranchId = usedBranchId;
	}
	public int getBuildingArea() {
		return buildingArea;
	}
	public void setBuildingArea(int buildingArea) {
		this.buildingArea = buildingArea;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getRoomCount() {
		return roomCount;
	}
	public void setRoomCount(int roomCount) {
		this.roomCount = roomCount;
	}
	public String getStructureType() {
		return structureType;
	}
	public void setStructureType(String structureType) {
		this.structureType = structureType;
	}
	public String getBuildingName() {
		return buildingName;
	}
	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}
	public String getRoomUsage() {
		return roomUsage;
	}
	public void setRoomUsage(String roomUsage) {
		this.roomUsage = roomUsage;
	}
	public String getAddition() {
		return addition;
	}
	public void setAddition(String addition) {
		this.addition = addition;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getIsLoan() {
		return isLoan;
	}
	public void setIsLoan(int isLoan) {
		this.isLoan = isLoan;
	}
	public String getLoanSource() {
		return loanSource;
	}
	public void setLoanSource(String loanSource) {
		this.loanSource = loanSource;
	}
	public Date getLoanTimeStart() {
		return loanTimeStart;
	}
	public void setLoanTimeStart(Date loanTimeStart) {
		this.loanTimeStart = loanTimeStart;
	}
	public Date getLoanTimeEnd() {
		return loanTimeEnd;
	}
	public void setLoanTimeEnd(Date loanTimeEnd) {
		this.loanTimeEnd = loanTimeEnd;
	}
	public String getUsedCompanyName() {
		return companyName;
	}
	public void setUsedCompanyName(String usedCompanyName) {
		this.companyName = usedCompanyName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((addition == null) ? 0 : addition.hashCode());
		result = prime * result + assetInfoId;
		result = prime * result + buildingArea;
		result = prime * result
				+ ((buildingName == null) ? 0 : buildingName.hashCode());
		result = prime * result + companyId;
		result = prime * result
				+ ((companyName == null) ? 0 : companyName.hashCode());
		result = prime * result + isLoan;
		result = prime * result
				+ ((loanSource == null) ? 0 : loanSource.hashCode());
		result = prime * result
				+ ((loanTimeEnd == null) ? 0 : loanTimeEnd.hashCode());
		result = prime * result
				+ ((loanTimeStart == null) ? 0 : loanTimeStart.hashCode());
		result = prime * result
				+ ((location == null) ? 0 : location.hashCode());
		result = prime * result + ((remark == null) ? 0 : remark.hashCode());
		result = prime * result + roomCount;
		result = prime * result + floorCount;
		result = prime * result
				+ ((roomUsage == null) ? 0 : roomUsage.hashCode());
		result = prime * result
				+ ((structureType == null) ? 0 : structureType.hashCode());
		result = prime * result + usedBranchId;
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
		AssetHousing other = (AssetHousing) obj;
		if (addition == null) {
			if (other.addition != null)
				return false;
		} else if (!addition.equals(other.addition))
			return false;
		if (assetInfoId != other.assetInfoId)
			return false;
		if (buildingArea != other.buildingArea)
			return false;
		if (buildingName == null) {
			if (other.buildingName != null)
				return false;
		} else if (!buildingName.equals(other.buildingName))
			return false;
		if (companyId != other.companyId)
			return false;
		if (companyName == null) {
			if (other.companyName != null)
				return false;
		} else if (!companyName.equals(other.companyName))
			return false;
		if (isLoan != other.isLoan)
			return false;
		if (loanSource == null) {
			if (other.loanSource != null)
				return false;
		} else if (!loanSource.equals(other.loanSource))
			return false;
		if (loanTimeEnd == null) {
			if (other.loanTimeEnd != null)
				return false;
		} else if (!loanTimeEnd.equals(other.loanTimeEnd))
			return false;
		if (loanTimeStart == null) {
			if (other.loanTimeStart != null)
				return false;
		} else if (!loanTimeStart.equals(other.loanTimeStart))
			return false;
		if (location == null) {
			if (other.location != null)
				return false;
		} else if (!location.equals(other.location))
			return false;
		if (remark == null) {
			if (other.remark != null)
				return false;
		} else if (!remark.equals(other.remark))
			return false;
		if (roomCount != other.roomCount)
			return false;
		if (floorCount != other.floorCount)
			return false;
		if (roomUsage == null) {
			if (other.roomUsage != null)
				return false;
		} else if (!roomUsage.equals(other.roomUsage))
			return false;
		if (structureType == null) {
			if (other.structureType != null)
				return false;
		} else if (!structureType.equals(other.structureType))
			return false;
		if (usedBranchId != other.usedBranchId)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "AssetHousing [assetInfoId=" + assetInfoId + ", usedBranchId="
				+ usedBranchId + ", buildingArea=" + buildingArea
				+ ", location=" + location + ", roomCount=" + roomCount
				+", floorCount=" + floorCount + ", structureType=" + structureType + ", buildingName="
				+ buildingName + ", roomUsage=" + roomUsage + ", addition="
				+ addition + ", remark=" + remark + ", isLoan=" + isLoan
				+ ", loanSource=" + loanSource + ", loanTimeStart="
				+ loanTimeStart + ", loanTimeEnd=" + loanTimeEnd
				+ ", companyName=" + companyName + ", companyId=" + companyId
				+ "]";
	}		
}
