package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetHousing;

public interface AssetHousingService {
	
	String addAssetHousing(AssetHousing ash);
	
	List<AssetHousing> queryAssetHousing();
}
