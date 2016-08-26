package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetLoanDevice;

public interface AssetLoanDeviceMapper {

	int addLoanDevice(AssetLoanDevice ald);

	List<AssetLoanDevice> queryLoanDevice();

	List<AssetLoanDevice> queryLoanDevice2();

	List<AssetLoanDevice> queryLoanDeviceByType(String search);

	List<AssetLoanDevice> queryLoanDeviceByBrand(String search);

	List<AssetLoanDevice> queryLoanDeviceByBatch(String search);

	List<AssetLoanDevice> queryLoanDeviceByLoanInfoId(String search);

	List<AssetLoanDevice> queryLoanDeviceByType2(String search);

	List<AssetLoanDevice> queryLoanDeviceByBrand2(String search);

	List<AssetLoanDevice> queryLoanDeviceByBatch2(String search);

	List<AssetLoanDevice> queryLoanDeviceByLoanInfoId2(String search);
}
