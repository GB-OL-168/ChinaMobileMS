package com.GB.ChinaMobileMS.entity;

public class VehicleInfoManageEntity {
	/**
	 * 车辆信息登记实体
	 */
	private int vehicleInfoId;
	private int driverId;
	private String brand;
	private String model;
	private String vehicleType;
	private int seat;
	private int productSource;
	private String manufacturer;
	private String color;
	private String fuelType;
	private String engineType;
	private String vin;
	private String productDate;
	private int price;
	private String usedUnit;
	public int getVehicleInfoId() {
		return vehicleInfoId;
	}
	public void setVehicleInfoId(int vehicleInfoId) {
		this.vehicleInfoId = vehicleInfoId;
	}
	public int getDriverId() {
		return driverId;
	}
	public void setDriverId(int driverId) {
		this.driverId = driverId;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public int getProductSource() {
		return productSource;
	}
	public void setProductSource(int productSource) {
		this.productSource = productSource;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getFuelType() {
		return fuelType;
	}
	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	public String getEngineType() {
		return engineType;
	}
	public void setEngineType(String engineType) {
		this.engineType = engineType;
	}
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public String getProductDate() {
		return productDate;
	}
	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getUsedUnit() {
		return usedUnit;
	}
	public void setUsedUnit(String usedUnit) {
		this.usedUnit = usedUnit;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((brand == null) ? 0 : brand.hashCode());
		result = prime * result + ((color == null) ? 0 : color.hashCode());
		result = prime * result + driverId;
		result = prime * result + ((engineType == null) ? 0 : engineType.hashCode());
		result = prime * result + ((fuelType == null) ? 0 : fuelType.hashCode());
		result = prime * result + ((manufacturer == null) ? 0 : manufacturer.hashCode());
		result = prime * result + ((model == null) ? 0 : model.hashCode());
		result = prime * result + price;
		result = prime * result + ((productDate == null) ? 0 : productDate.hashCode());
		result = prime * result + productSource;
		result = prime * result + seat;
		result = prime * result + ((usedUnit == null) ? 0 : usedUnit.hashCode());
		result = prime * result + vehicleInfoId;
		result = prime * result + ((vehicleType == null) ? 0 : vehicleType.hashCode());
		result = prime * result + ((vin == null) ? 0 : vin.hashCode());
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
		VehicleInfoManageEntity other = (VehicleInfoManageEntity) obj;
		if (brand == null) {
			if (other.brand != null)
				return false;
		} else if (!brand.equals(other.brand))
			return false;
		if (color == null) {
			if (other.color != null)
				return false;
		} else if (!color.equals(other.color))
			return false;
		if (driverId != other.driverId)
			return false;
		if (engineType == null) {
			if (other.engineType != null)
				return false;
		} else if (!engineType.equals(other.engineType))
			return false;
		if (fuelType == null) {
			if (other.fuelType != null)
				return false;
		} else if (!fuelType.equals(other.fuelType))
			return false;
		if (manufacturer == null) {
			if (other.manufacturer != null)
				return false;
		} else if (!manufacturer.equals(other.manufacturer))
			return false;
		if (model == null) {
			if (other.model != null)
				return false;
		} else if (!model.equals(other.model))
			return false;
		if (price != other.price)
			return false;
		if (productDate == null) {
			if (other.productDate != null)
				return false;
		} else if (!productDate.equals(other.productDate))
			return false;
		if (productSource != other.productSource)
			return false;
		if (seat != other.seat)
			return false;
		if (usedUnit == null) {
			if (other.usedUnit != null)
				return false;
		} else if (!usedUnit.equals(other.usedUnit))
			return false;
		if (vehicleInfoId != other.vehicleInfoId)
			return false;
		if (vehicleType == null) {
			if (other.vehicleType != null)
				return false;
		} else if (!vehicleType.equals(other.vehicleType))
			return false;
		if (vin == null) {
			if (other.vin != null)
				return false;
		} else if (!vin.equals(other.vin))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "VehicleInfoManageEntity [vehicleInfoId=" + vehicleInfoId + ", driverId=" + driverId + ", brand=" + brand
				+ ", model=" + model + ", vehicleType=" + vehicleType + ", seat=" + seat + ", productSource="
				+ productSource + ", manufacturer=" + manufacturer + ", color=" + color + ", fuelType=" + fuelType
				+ ", engineType=" + engineType + ", vin=" + vin + ", productDate=" + productDate + ", price=" + price
				+ ", usedUnit=" + usedUnit + "]";
	}
	
	
	
}
