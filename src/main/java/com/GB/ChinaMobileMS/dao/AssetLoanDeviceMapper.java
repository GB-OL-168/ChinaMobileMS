package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetLoanDevice;

public interface AssetLoanDeviceMapper {
	
	int addLoanDevice(AssetLoanDevice ald);
	
	List<AssetLoanDevice> queryLoanDevice();
	
	List<AssetLoanDevice> queryLoanDevice2();
}
