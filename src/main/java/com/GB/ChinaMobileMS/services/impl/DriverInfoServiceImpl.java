package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.DriverInfoMapper;
import com.GB.ChinaMobileMS.entity.DriverInfoEntity;
import com.GB.ChinaMobileMS.services.interfaces.DriverInfoService;

@Service
public class DriverInfoServiceImpl implements DriverInfoService{
	/**
	 * 驾驶员信息
	 */
	@Autowired
	private DriverInfoMapper driverInfoMapper;

	@Override
	public String insertVehiclePerson(DriverInfoEntity driverInfoEntity) {		
		driverInfoMapper.insertDriverInfo(driverInfoEntity);
		return null;
	}
	
	@Override
	public List<DriverInfoEntity> queryDriverInfoByName(String queryInformation) {		
		return driverInfoMapper.queryDriverInfoByName(queryInformation);
	}
	@Override
	public List<DriverInfoEntity> queryDriverInfoBySex(String queryInformation) {		
		return driverInfoMapper.queryDriverInfoBySex(queryInformation);
	}
	@Override
	public List<DriverInfoEntity> queryDriverInfoByServiceUnit(String queryInformation) {		
		return driverInfoMapper.queryDriverInfoByServiceUnit(queryInformation);
	}
	
	@Override
	public List<DriverInfoEntity> listDriverInfo() {		
		return driverInfoMapper.listDriverInfo();
	}
	
	@Override
	public boolean deleteVehiclePerson(int driverId) {		
		return driverInfoMapper.deleteVehiclePerson(driverId);	
	}
	
	@Override
	public String updateVehiclePerson(DriverInfoEntity driverInfoEntity) {		
		System.out.println(driverInfoMapper.updateVehiclePerson(driverInfoEntity));		
		return "";
	}

}