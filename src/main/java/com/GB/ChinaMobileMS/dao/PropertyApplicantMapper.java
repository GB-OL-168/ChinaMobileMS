package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;

public interface PropertyApplicantMapper {
	//数据库接口
//	PropertyServiceEntity findByApplyUserName(String applyUserName);
	
	public int insertPropertyApplicant(PropertyServiceEntity propertyApplicant);
	
	public List<PropertyServiceEntity> listPropertyApplicant();

	public List<PropertyServiceEntity> queryPropertyApplicantByUserName(String userName);
	
	public PropertyServiceEntity queryPropertyApplicantByAllCols(PropertyServiceEntity propertyApplicant);
	
	public boolean updateTempDemand(@Param("propertyID")int propertyID, @Param("tempDemand")String tempDemand);
}
