package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetLoanDevice;

public interface AssetLoanDeviceService {
	
	String addLoanDevice(AssetLoanDevice ald);
	
	List<AssetLoanDevice> queryLoanDevice();
	
	List<AssetLoanDevice> queryLoanDevice2();
}
