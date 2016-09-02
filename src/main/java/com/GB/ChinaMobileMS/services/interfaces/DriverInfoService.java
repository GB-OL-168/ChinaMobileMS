package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.DriverInfoEntity;

public interface DriverInfoService {
	/**
	 * 驾驶员信息
	 */
	
	//驾驶员登记
	String insertVehiclePerson(DriverInfoEntity driverInfoEntity);
	
	//驾驶员查询
	public List<DriverInfoEntity> queryDriverInfoByName(String queryInformation);
	public List<DriverInfoEntity> queryDriverInfoBySex(String queryInformation);
	public List<DriverInfoEntity> queryDriverInfoByServiceUnit(String queryInformation);
	
	public List<DriverInfoEntity> listDriverInfo();
	
	//驾驶员删除
	boolean deleteVehiclePerson(int driverId);
	
	//驾驶员修改
	String updateVehiclePerson(DriverInfoEntity driverInfoEntity);

}
