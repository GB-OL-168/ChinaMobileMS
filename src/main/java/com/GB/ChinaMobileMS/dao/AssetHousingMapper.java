package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetHousing;

public interface AssetHousingMapper {
	
	int addAssetHousing (AssetHousing ash);
	
	List<AssetHousing> queryAssetHousing();
}
