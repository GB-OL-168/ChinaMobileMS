package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetHousing;

public interface AssetHousingService {
	
	String addAssetHousing(AssetHousing ash);
	
	List<AssetHousing> queryAssetHousing();
	
	List<AssetHousing> queryAssetHousing2();
	
	AssetHousing detailed(int assetInfoId);
	
	List<AssetHousing> searchAssetHousing(String houses,String seacrh);
	 
	public List<AssetHousing> getAssetHousingByCompany(int companyId);
}
