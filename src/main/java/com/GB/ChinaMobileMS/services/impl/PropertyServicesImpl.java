package com.GB.ChinaMobileMS.services.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.PropertyMapper;
import com.GB.ChinaMobileMS.dao.ReviewMapper;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.services.interfaces.PropertyServices;
@Service
public class PropertyServicesImpl implements PropertyServices {

	@Autowired
	private PropertyMapper propertyMapper;
	@Autowired
	private ReviewMapper reviewMapper;
	
	public List<PropertyServiceEntity> auditParty() {
		List<PropertyServiceEntity> propertylist=propertyMapper.findPropertyInfo();
		return propertylist;
	}
	public boolean setStatus(int id,int status){
		System.out.println("进入了 updateStatus 方法");
		boolean sure=propertyMapper.updateStatus(id, status);
		return sure;
	}
	
	@Override
	public List<PropertyServiceEntity> getPropertyTableByID(int propertyID) {
		return propertyMapper.queryPopertyTableByID(propertyID);
	}
	@Override
	public List<PropertyServiceEntity> getPropertyTableByVertifyUser(String vertifyUser) {
		return reviewMapper.queryPropertyTableByVertifyUser(vertifyUser);
	}
}
