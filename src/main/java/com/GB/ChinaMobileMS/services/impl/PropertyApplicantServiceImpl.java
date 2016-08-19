package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

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
	

	public String addPropertyApplicant(PropertyServiceEntity propertyApplicant) {
		System.out.println("进入了 addPropertyApplicant 方法");
		// TODO Auto-generated method stub
		int insertResult = propertyApplicantMapper.insertPropertyApplicant(propertyApplicant);
		System.out.println("insertResult = "  + insertResult);
		
		return null;
	}
	
	public List<PropertyServiceEntity> listPropertyApplicant() {
		
		List<PropertyServiceEntity> listPropertyApplicant = propertyApplicantMapper.listPropertyApplicant();	
		return listPropertyApplicant;
	}
	
}
