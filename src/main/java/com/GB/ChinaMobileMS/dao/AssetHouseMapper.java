package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetHouse;

public interface AssetHouseMapper {
	int addAssetHouse(AssetHouse room);
	
	List<AssetHouse> queryAssetHouse();
	
	List<AssetHouse> queryAssetHouse2();
	
	List<AssetHouse> queryAssetHouseByCompanyName(String search);
	
	List<AssetHouse> queryAssetHouseByBuilding(String search);
	
	List<AssetHouse> queryAssetHouseByArea(String search);
}
