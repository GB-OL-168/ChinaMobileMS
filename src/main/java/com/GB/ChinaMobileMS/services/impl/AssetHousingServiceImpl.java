package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

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
	
	public List<AssetHousing> queryAssetHousing(){
		System.out.println("Enter queryAssetHousing");
		List<AssetHousing> listash = ashMapper.queryAssetHousing();
		
		return listash;
	}
	public List<AssetHousing> queryAssetHousing2(){
		System.out.println("Enter queryAssetHousing2");
		List<AssetHousing> listash = ashMapper.queryAssetHousing2();
		
		return listash;
	}
	public AssetHousing detailed(int assetInfoId){
		System.out.println("Enter detailed");
		AssetHousing ash =ashMapper.detailed(assetInfoId);
		
		return ash;
	}
}