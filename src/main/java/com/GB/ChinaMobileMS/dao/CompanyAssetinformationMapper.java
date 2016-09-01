package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.AssetFurniture;

public interface CompanyAssetinformationMapper {
	public List<AssetFurniture> querylistFuniture();
	public List<AssetFurniture> querylistFuniturewithcon(int used_situation);
	public List<AssetFurniture> querylistFuniturewithTwoCon(int used_situation,String queryInformation);
}
