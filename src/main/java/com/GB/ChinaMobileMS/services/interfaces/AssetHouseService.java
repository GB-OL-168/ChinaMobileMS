package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetHouse;

public interface AssetHouseService {
	String addAssetHouse(AssetHouse room);
	
	List<AssetHouse> queryAssetHouse();
}
