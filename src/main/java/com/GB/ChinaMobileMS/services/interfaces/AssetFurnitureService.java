package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetFurniture;

public interface AssetFurnitureService {
	String addFurniture(AssetFurniture assetfurn);
	
	List<AssetFurniture> queryAssetFurniture();
	
	List<AssetFurniture> search(String asf,String search);
	
	String updateFurnitureInfo(AssetFurniture assetfurn);
	boolean deleteFurnitureInfo(int officeFurnitureInfoId);
	
	List<AssetFurniture> getAssetFurnitureByBuildingID(int assetInfoId);
}
