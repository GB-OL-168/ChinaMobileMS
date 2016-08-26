package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.CompanyAssetinformationMapper;
import com.GB.ChinaMobileMS.entity.AssetFurniture;
import com.GB.ChinaMobileMS.services.interfaces.CompanyAssetinformationService;

@Service
public class CompanyAssetinformationServiceImpl implements CompanyAssetinformationService{
	@Autowired
	private CompanyAssetinformationMapper companyAssetinformationmapper;
	
	@Override
	public List<AssetFurniture> querylistFuniturewithcon(int used_situation) {
		
		return companyAssetinformationmapper.querylistFuniturewithcon(used_situation);
	}

	@Override
	public List<AssetFurniture> querylistFuniture() {
		// TODO Auto-generated method stub
		return companyAssetinformationmapper.querylistFuniture();
	}

}
