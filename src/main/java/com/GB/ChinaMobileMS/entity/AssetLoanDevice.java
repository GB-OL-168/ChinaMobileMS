package com.GB.ChinaMobileMS.entity;

import java.sql.Date;

public class AssetLoanDevice {
	private int loanInfoId;//设备编号
	private String loanUserName;//使用人
	private int belongBranchId;//所在部门
	private int batch;//批次
	private String type;//类型
	private String brand;//品牌/型号
	private String specification;//规格
	private Date arrivalDate;//到货日期
	private int count;//count
	private int allowUseYears;//使用年限
	private int unitValue;//单位价值
	private int allValue;//总价值
	private int orderNumber;//序号
	private Date getDate;//领用日期
	private Date expiredDate;//到期时间
	
	
	private int jobId;
	private String branchName;
	public int getLoanInfoId() {
		return loanInfoId;
	}
	public void setLoanInfoId(int loanInfoId) {
		this.loanInfoId = loanInfoId;
	}
	public String getLoanUserName() {
		return loanUserName;
	}
	public void setLoanUserName(String loanUserName) {
		this.loanUserName = loanUserName;
	}
	public int getBelongBranchId() {
		return belongBranchId;
	}
	public void setBelongBranchId(int belongBranchId) {
		this.belongBranchId = belongBranchId;
	}
	public int getBatch() {
		return batch;
	}
	public void setBatch(int batch) {
		this.batch = batch;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public Date getArrivalDate() {
		return arrivalDate;
	}
	public void setArrivalDate(Date arrivalDate) {
		this.arrivalDate = arrivalDate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getAllowUseYears() {
		return allowUseYears;
	}
	public void setAllowUseYears(int allowUseYears) {
		this.allowUseYears = allowUseYears;
	}
	public int getUnitValue() {
		return unitValue;
	}
	public void setUnitValue(int unitValue) {
		this.unitValue = unitValue;
	}
	public int getAllValue() {
		return allValue;
	}
	public void setAllValue(int allValue) {
		this.allValue = allValue;
	}
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public Date getGetDate() {
		return getDate;
	}
	public void setGetDate(Date getDate) {
		this.getDate = getDate;
	}
	public Date getExpiredDate() {
		return expiredDate;
	}
	public void setExpiredDate(Date expiredDate) {
		this.expiredDate = expiredDate;
	}
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + allValue;
		result = prime * result + allowUseYears;
		result = prime * result
				+ ((arrivalDate == null) ? 0 : arrivalDate.hashCode());
		result = prime * result + batch;
		result = prime * result + belongBranchId;
		result = prime * result
				+ ((branchName == null) ? 0 : branchName.hashCode());
		result = prime * result + ((brand == null) ? 0 : brand.hashCode());
		result = prime * result + count;
		result = prime * result
				+ ((expiredDate == null) ? 0 : expiredDate.hashCode());
		result = prime * result + ((getDate == null) ? 0 : getDate.hashCode());
		result = prime * result + jobId;
		result = prime * result + loanInfoId;
		result = prime * result
				+ ((loanUserName == null) ? 0 : loanUserName.hashCode());
		result = prime * result + orderNumber;
		result = prime * result
				+ ((specification == null) ? 0 : specification.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		result = prime * result + unitValue;
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
		AssetLoanDevice other = (AssetLoanDevice) obj;
		if (allValue != other.allValue)
			return false;
		if (allowUseYears != other.allowUseYears)
			return false;
		if (arrivalDate == null) {
			if (other.arrivalDate != null)
				return false;
		} else if (!arrivalDate.equals(other.arrivalDate))
			return false;
		if (batch != other.batch)
			return false;
		if (belongBranchId != other.belongBranchId)
			return false;
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
		if (count != other.count)
			return false;
		if (expiredDate == null) {
			if (other.expiredDate != null)
				return false;
		} else if (!expiredDate.equals(other.expiredDate))
			return false;
		if (getDate == null) {
			if (other.getDate != null)
				return false;
		} else if (!getDate.equals(other.getDate))
			return false;
		if (jobId != other.jobId)
			return false;
		if (loanInfoId != other.loanInfoId)
			return false;
		if (loanUserName == null) {
			if (other.loanUserName != null)
				return false;
		} else if (!loanUserName.equals(other.loanUserName))
			return false;
		if (orderNumber != other.orderNumber)
			return false;
		if (specification == null) {
			if (other.specification != null)
				return false;
		} else if (!specification.equals(other.specification))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		if (unitValue != other.unitValue)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "AssetLoanDevice [loanInfoId=" + loanInfoId + ", loanUserName="
				+ loanUserName + ", belongBranchId=" + belongBranchId
				+ ", batch=" + batch + ", type=" + type + ", brand=" + brand
				+ ", specification=" + specification + ", arrivalDate="
				+ arrivalDate + ", count=" + count + ", allowUseYears="
				+ allowUseYears + ", unitValue=" + unitValue + ", allValue="
				+ allValue + ", orderNumber=" + orderNumber + ", getDate="
				+ getDate + ", expiredDate=" + expiredDate + ", jobId=" + jobId
				+ ", branchName=" + branchName + "]";
	}
	
	

	
	
	
	
} 
