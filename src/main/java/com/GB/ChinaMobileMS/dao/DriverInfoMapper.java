package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.DriverInfoEntity;

public interface DriverInfoMapper {
	/**
	 * 驾驶员信息数据接口
	 */
	int insertDriverInfo(DriverInfoEntity driverInfoEntity);
	
	public List<DriverInfoEntity> queryDriverInfoByName(String queryInformation);
	public List<DriverInfoEntity> queryDriverInfoBySex(String queryInformation);
	public List<DriverInfoEntity> queryDriverInfoByServiceUnit(String queryInformation);
	
	public List<DriverInfoEntity> listDriverInfo();

}
