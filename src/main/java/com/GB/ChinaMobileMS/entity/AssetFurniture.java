package com.GB.ChinaMobileMS.entity;

public class AssetFurniture {
	private int officeFurnitureInfoId;//
	private int houseId;// 房间编号
	private int usedBranchId;// 使用部门
	private String furnitureType;// 家具类型
	private String brand;// 品牌/型号
	private String specification;// 规格
	private int count;// 数量
	private String usedSituation;// 使用情况

	private String branchName = null;
	private String companyName = null;
	private int companyId;
	private int floor;
	public int getOfficeFurnitureInfoId() {
		return officeFurnitureInfoId;
	}
	public void setOfficeFurnitureInfoId(int officeFurnitureInfoId) {
		this.officeFurnitureInfoId = officeFurnitureInfoId;
	}
	public int getHouseId() {
		return houseId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
	public int getUsedBranchId() {
		return usedBranchId;
	}
	public void setUsedBranchId(int usedBranchId) {
		this.usedBranchId = usedBranchId;
	}
	public String getFurnitureType() {
		return furnitureType;
	}
	public void setFurnitureType(String furnitureType) {
		this.furnitureType = furnitureType;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getUsedSituation() {
		return usedSituation;
	}
	public void setUsedSituation(String usedSituation) {
		this.usedSituation = usedSituation;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
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
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((branchName == null) ? 0 : branchName.hashCode());
		result = prime * result + ((brand == null) ? 0 : brand.hashCode());
		result = prime * result + companyId;
		result = prime * result
				+ ((companyName == null) ? 0 : companyName.hashCode());
		result = prime * result + count;
		result = prime * result + floor;
		result = prime * result
				+ ((furnitureType == null) ? 0 : furnitureType.hashCode());
		result = prime * result + houseId;
		result = prime * result + officeFurnitureInfoId;
		result = prime * result
				+ ((specification == null) ? 0 : specification.hashCode());
		result = prime * result + usedBranchId;
		result = prime * result
				+ ((usedSituation == null) ? 0 : usedSituation.hashCode());
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
		AssetFurniture other = (AssetFurniture) obj;
		if (branchName == null) {
			if (other.branchName != null)
				return false;
		} else if (!branchName.equals(other.branchName))
			return false;
		if (brand == null) {
			if (other.brand != null)
				return false;
		} else if (!brand.equals(other.brand))
			return false;
		if (companyId != other.companyId)
			return false;
		if (companyName == null) {
			if (other.companyName != null)
				return false;
		} else if (!companyName.equals(other.companyName))
			return false;
		if (count != other.count)
			return false;
		if (floor != other.floor)
			return false;
		if (furnitureType == null) {
			if (other.furnitureType != null)
				return false;
		} else if (!furnitureType.equals(other.furnitureType))
			return false;
		if (houseId != other.houseId)
			return false;
		if (officeFurnitureInfoId != other.officeFurnitureInfoId)
			return false;
		if (specification == null) {
			if (other.specification != null)
				return false;
		} else if (!specification.equals(other.specification))
			return false;
		if (usedBranchId != other.usedBranchId)
			return false;
		if (usedSituation == null) {
			if (other.usedSituation != null)
				return false;
		} else if (!usedSituation.equals(other.usedSituation))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "AssetFurniture [officeFurnitureInfoId=" + officeFurnitureInfoId
				+ ", houseId=" + houseId + ", usedBranchId=" + usedBranchId
				+ ", furnitureType=" + furnitureType + ", brand=" + brand
				+ ", specification=" + specification + ", count=" + count
				+ ", usedSituation=" + usedSituation + ", branchName="
				+ branchName + ", companyName=" + companyName + ", companyId="
				+ companyId + ", floor=" + floor + "]";
	}

	

	
}