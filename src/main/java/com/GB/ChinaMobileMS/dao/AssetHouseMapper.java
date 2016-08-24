package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetHouse;

public interface AssetHouseMapper {
	int addAssetHouse(AssetHouse room);
	
	List<AssetHouse> queryAssetHouse();
}
