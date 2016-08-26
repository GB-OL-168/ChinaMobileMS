package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.VehicleInfoManageEntity;

public interface VehicleInfoManageService {
	/**
	 * 车辆信息
	 */
	String insertVehicleInfoManage(VehicleInfoManageEntity vehicleInfoManageEntity);
	
	public List<VehicleInfoManageEntity> queryVehicleInfoByBrand(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoByModel(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoByVehicleType(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoBySeat(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoByUsedUnit(String queryInformation);
	
	public List<VehicleInfoManageEntity> listVehicleInfoManage();
}
