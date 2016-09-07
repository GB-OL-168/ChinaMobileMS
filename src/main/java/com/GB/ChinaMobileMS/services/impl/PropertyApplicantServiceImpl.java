package com.GB.ChinaMobileMS.services.impl;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.GB.ChinaMobileMS.dao.PropertyApplicantMapper;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.services.interfaces.PropertyApplicantService;

@Service
public class PropertyApplicantServiceImpl implements PropertyApplicantService {
	//实现类
	@Autowired
	private PropertyApplicantMapper propertyApplicantMapper;
	//PropertyApplicantMapper映射接口，生成一个实现对象
	
	@Transactional
	public int addPropertyApplicant(PropertyServiceEntity propertyApplicant) {
		try{
			int result = propertyApplicantMapper.insertPropertyApplicant(propertyApplicant);
			System.out.println(propertyApplicant);
			if(result>0){
				PropertyServiceEntity entity = propertyApplicantMapper.queryPropertyApplicantByAllCols(propertyApplicant);
				
				return entity.getPropertyTableId();
			}else 
				return 0;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	public List<PropertyServiceEntity> listPropertyApplicant() {
		try{
			return propertyApplicantMapper.listPropertyApplicant();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<PropertyServiceEntity> getPropertyApplicantByApplyUserName(String userName) {
		try{
			return propertyApplicantMapper.queryPropertyApplicantByUserName(userName);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean setPropertyTempDemand(int id, String tempDemand) {
		try{
			return propertyApplicantMapper.updateTempDemand(id, tempDemand);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean validateContactInfo(String contactInfo) {
		Pattern p = Pattern.compile("^1(3|4|5|7|8)\\d{9}$");
		return p.matcher(contactInfo).matches();
	}
}
