package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetFurniture;

public interface AssetFurnitureMapper {
	int addFurniture(AssetFurniture assetfurn);
	
	List<AssetFurniture> queryAssetFurniture();
}
