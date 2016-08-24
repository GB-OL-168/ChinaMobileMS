package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.AssetHousingMapper;
import com.GB.ChinaMobileMS.entity.AssetHousing;
import com.GB.ChinaMobileMS.services.interfaces.AssetHousingService;


@Service
public class AssetHousingServiceImpl implements AssetHousingService{
	
	@Autowired
	public AssetHousingMapper  ashMapper;
	
	
	public String addAssetHousing(AssetHousing ash) {
		System.out.println("Enter addAssetHousing");
		int addash = ashMapper.addAssetHousing(ash);
		return "done";
	}

}
