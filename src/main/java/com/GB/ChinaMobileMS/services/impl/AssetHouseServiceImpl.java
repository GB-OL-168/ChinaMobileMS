package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.AssetHouseMapper;
import com.GB.ChinaMobileMS.entity.AssetHouse;
import com.GB.ChinaMobileMS.services.interfaces.AssetHouseService;
@Service
public class AssetHouseServiceImpl implements AssetHouseService {
	
	@Autowired
	private AssetHouseMapper roomMapper ;
	@Override
	public String addAssetHouse(AssetHouse room) {
		System.out.println("Enter addAssetHouse");
		
		int i  = roomMapper.addAssetHouse(room);
		return "done";
	}
	
	public List<AssetHouse> queryAssetHouse()
	{
		System.out.println("Enter queryAssetHouse");
		
		List<AssetHouse> listroom = roomMapper.queryAssetHouse();
		
		return listroom;
	}
}
