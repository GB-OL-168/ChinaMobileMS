package com.GB.ChinaMobileMS.entity;

public class AssetHouse {
	private String building;
	private int houseId;
	private int belonngBranchId;
	private int floor;
	private int area;
	private int assetInfoId;

	private int companyId;
	private String companyName;
	private String buildingName;

	public int getAssetInfoId() {
		return assetInfoId;
	}

	public void setAssetInfoId(int assetInfoId) {
		this.assetInfoId = assetInfoId;
	}
	public String getBuilding() {
		return building;
	}

	public void setBuilding(String building) {
		this.building = building;
	}

	public int getHouseId() {
		return houseId;
	}

	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}

	public int getBelonngBranchId() {
		return belonngBranchId;
	}

	public void setBelonngBranchId(int belonngBranchId) {
		this.belonngBranchId = belonngBranchId;
	}

	public int getFloor() {
		return floor;
	}

	public void setFloor(int floor) {
		this.floor = floor;
	}

	public int getArea() {
		return area;
	}

	public void setArea(int area) {
		this.area = area;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getCompanyame() {
		return companyName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getBuildingName() {
		return buildingName;
	}

	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + area;
		result = prime * result + belonngBranchId;
		result = prime * result
				+ ((building == null) ? 0 : building.hashCode());
		result = prime * result
				+ ((buildingName == null) ? 0 : buildingName.hashCode());
		result = prime * result + companyId;
		result = prime * result
				+ ((companyName == null) ? 0 : companyName.hashCode());
		result = prime * result + floor;
		result = prime * result + houseId;
		result = prime * result + assetInfoId;
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
		AssetHouse other = (AssetHouse) obj;
		if (area != other.area)
			return false;
		if (belonngBranchId != other.belonngBranchId)
			return false;
		if (building == null) {
			if (other.building != null)
				return false;
		} else if (!building.equals(other.building))
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
		if (floor != other.floor)
			return false;
		if (houseId != other.houseId)
			return false;
		if (houseId != other.assetInfoId)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "AssetHouse [building=" + building + ", houseId=" + houseId
				+ ", belonngBranchId=" + belonngBranchId + ", floor=" + floor
				+ ", area=" + area + ", companyId=" + companyId + ", assetInfoId=" + assetInfoId
				+ ", companyName=" + companyName + ", buildingName="
				+ buildingName + "]";
	}

}
