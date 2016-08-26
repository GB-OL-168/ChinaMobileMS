package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.VehicleInfoManageEntity;

public interface VehicleInfoManageMapper {
	/**
	 * 车辆信息
	 */
	int insertVehicleInfoManage(VehicleInfoManageEntity vehicleInfoManageEntity);
	
	public List<VehicleInfoManageEntity> queryVehicleInfoByBrand(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoByModel(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoByVehicleType(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoBySeat(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoByUsedUnit(String queryInformation);
	
	public List<VehicleInfoManageEntity> listVehicleInfoManage();
}
