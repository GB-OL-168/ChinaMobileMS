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
		try{
			return propertyMapper.findPropertyInfo();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public boolean setStatus(int id,int status){
		try{
			return propertyMapper.updateStatus(id, status);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public List<PropertyServiceEntity> getPropertyTableByID(int propertyID) {
		try{
			return propertyMapper.queryPopertyTableByID(propertyID);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public List<PropertyServiceEntity> getPropertyTableByVertifyUser(String vertifyUser) {
		try{
			return reviewMapper.queryPropertyTableByVertifyUser(vertifyUser);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public boolean setTemporaryDemand(String temporaryDemand, int id) {
		try{
			return propertyMapper.updateTemporaryDemand(id, temporaryDemand);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
}
