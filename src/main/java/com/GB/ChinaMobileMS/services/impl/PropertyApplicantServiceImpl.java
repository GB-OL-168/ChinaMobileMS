package com.GB.ChinaMobileMS.services.impl;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.PropertyApplicantMapper;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.services.interfaces.PropertyApplicantService;

@Service
public class PropertyApplicantServiceImpl implements PropertyApplicantService {
	//实现类
	@Autowired
	private PropertyApplicantMapper propertyApplicantMapper;
	//PropertyApplicantMapper映射接口，生成一个实现对象
	

	public int addPropertyApplicant(PropertyServiceEntity propertyApplicant) {
		int result = propertyApplicantMapper.insertPropertyApplicant(propertyApplicant);
		System.out.println(propertyApplicant);
		if(result>0){
			PropertyServiceEntity entity = propertyApplicantMapper.queryPropertyApplicantByAllCols(propertyApplicant);
			
			return entity.getPropertyTableId();
		}else 
			return 0;
	}
	
	public List<PropertyServiceEntity> listPropertyApplicant() {
		
		List<PropertyServiceEntity> listPropertyApplicant = propertyApplicantMapper.listPropertyApplicant();	
		return listPropertyApplicant;
	}

	@Override
	public List<PropertyServiceEntity> getPropertyApplicantByApplyUserName(String userName) {
		
		return propertyApplicantMapper.queryPropertyApplicantByUserName(userName);
	}

	@Override
	public boolean setPropertyTempDemand(int id, String tempDemand) {
		return propertyApplicantMapper.updateTempDemand(id, tempDemand);
	}

	@Override
	public boolean validateContactInfo(String contactInfo) {
		Pattern p = Pattern.compile("^1(3|4|5|7|8)\\d{9}$");
		return p.matcher(contactInfo).matches();
	}
}
