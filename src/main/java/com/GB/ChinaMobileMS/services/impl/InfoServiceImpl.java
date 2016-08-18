package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.InformationMapper;
import com.GB.ChinaMobileMS.entity.Information;
import com.GB.ChinaMobileMS.services.interfaces.InfoService;

@Service
public class InfoServiceImpl implements InfoService{
	
	@Autowired
	private InformationMapper infoMapper;
	
	public int updateInfo(Information info) {
		System.out.println("Enter AddInfo");
		return infoMapper.updateInfo(info);
	}

	public Information findbyInfoID() {
		System.out.println("Enter CheckInfo");
		
		Information info =  infoMapper.findbyInfoID();
		
		System.out.println("Finlish CheckInfo");
		return info;
	}

}
