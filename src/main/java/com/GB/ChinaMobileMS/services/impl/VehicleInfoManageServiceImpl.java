package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.VehicleInfoManageMapper;
import com.GB.ChinaMobileMS.entity.VehicleInfoManageEntity;
import com.GB.ChinaMobileMS.services.interfaces.VehicleInfoManageService;

@Service
public class VehicleInfoManageServiceImpl implements VehicleInfoManageService{
	/**
	 * 车辆信息
	 */
	@Autowired
	private VehicleInfoManageMapper vehicleInfoManageMapper;

	@Override
	public String insertVehicleInfoManage(VehicleInfoManageEntity vehicleInfoManageEntity) {	
		vehicleInfoManageMapper.insertVehicleInfoManage(vehicleInfoManageEntity);
		return null;
	}
	
	@Override
	public List<VehicleInfoManageEntity> queryVehicleInfoByBrand(String queryInformation) {
		return vehicleInfoManageMapper.queryVehicleInfoByBrand(queryInformation);
	}
	@Override
	public List<VehicleInfoManageEntity> queryVehicleInfoByModel(String queryInformation) {		
		return vehicleInfoManageMapper.queryVehicleInfoByModel(queryInformation);
	}
	@Override
	public List<VehicleInfoManageEntity> queryVehicleInfoByVehicleType(String queryInformation) {		
		return vehicleInfoManageMapper.queryVehicleInfoByVehicleType(queryInformation);
	}
	@Override
	public List<VehicleInfoManageEntity> queryVehicleInfoBySeat(String queryInformation) {		
		return vehicleInfoManageMapper.queryVehicleInfoBySeat(queryInformation);
	}
	@Override
	public List<VehicleInfoManageEntity> queryVehicleInfoByUsedUnit(String queryInformation) {		
		return vehicleInfoManageMapper.queryVehicleInfoByUsedUnit(queryInformation);
	}
	
	@Override
	public List<VehicleInfoManageEntity> listVehicleInfoManage() {	
		return vehicleInfoManageMapper.listVehicleInfoManage();
	}
}
