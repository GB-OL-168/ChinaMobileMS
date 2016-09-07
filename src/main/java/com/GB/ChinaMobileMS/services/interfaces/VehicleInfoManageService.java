package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.VehicleInfoManageEntity;

public interface VehicleInfoManageService {
	/**
	 * 车辆信息
	 */
	//车辆登记
	String insertVehicleInfoManage(VehicleInfoManageEntity vehicleInfoManageEntity);
	
	//车辆查询
	public List<VehicleInfoManageEntity> queryVehicleInfoByBrand(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoByModel(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoByVehicleType(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoBySeat(String queryInformation);
	public List<VehicleInfoManageEntity> queryVehicleInfoByUsedUnit(String queryInformation);
	
	public List<VehicleInfoManageEntity> listVehicleInfoManage();
	
	//车辆删除
	boolean deleteVehicleInfoManage(int vehicleInfoId);
	
	//车辆修改
	int updateVehicleInfo(VehicleInfoManageEntity vehicleInfoManageEntity);
}
