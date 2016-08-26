package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.DriverInfoEntity;

public interface DriverInfoService {
	/**
	 * 驾驶员信息
	 */
	String insertVehiclePerson(DriverInfoEntity driverInfoEntity);
	
	public List<DriverInfoEntity> queryDriverInfoByName(String queryInformation);
	public List<DriverInfoEntity> queryDriverInfoBySex(String queryInformation);
	public List<DriverInfoEntity> queryDriverInfoByServiceUnit(String queryInformation);
	
	public List<DriverInfoEntity> listDriverInfo();

}
