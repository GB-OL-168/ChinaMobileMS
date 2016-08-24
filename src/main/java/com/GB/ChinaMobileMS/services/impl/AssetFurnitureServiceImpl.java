package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.AssetFurnitureMapper;
import com.GB.ChinaMobileMS.entity.AssetFurniture;
import com.GB.ChinaMobileMS.services.interfaces.AssetFurnitureService;

@Service
public class AssetFurnitureServiceImpl implements AssetFurnitureService{
	
	@Autowired
	private AssetFurnitureMapper assetfurnMapper;
	@Override
	public String addFurniture(AssetFurniture assetfurn) {
		System.out.println("Enter addFurniture");
		
		int i = assetfurnMapper.addFurniture(assetfurn);
		return "done";
	}

}
