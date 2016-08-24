package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;

public interface PropertyMapper {
	public List<PropertyServiceEntity> findPropertyInfo();
	public boolean updateStatus(@Param("id")int id,@Param("status")int status);
	public List<PropertyServiceEntity> queryPopertyTableByID(int propertyTableID);
	public boolean updateTemporaryDemand(@Param("id")int id, @Param("temporaryDemand")String temporaryDemand);
}
