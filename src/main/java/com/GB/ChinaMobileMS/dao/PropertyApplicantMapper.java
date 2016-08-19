package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;

public interface PropertyApplicantMapper {
	//数据库接口
//	PropertyServiceEntity findByApplyUserName(String applyUserName);
	
	int insertPropertyApplicant(PropertyServiceEntity propertyApplicant);
	
	List<PropertyServiceEntity> listPropertyApplicant();

}
