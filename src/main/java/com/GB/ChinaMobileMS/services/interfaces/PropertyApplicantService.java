package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;

public interface PropertyApplicantService {
	
	/**
	 * @Cindy
	 *填写物业服务申请
	 */
	int addPropertyApplicant(PropertyServiceEntity propertyApplicant);
	
	List<PropertyServiceEntity> listPropertyApplicant();
	
	public List<PropertyServiceEntity> getPropertyApplicantByApplyUserName(String userName);
	
	public boolean setPropertyTempDemand(int id, String tempDemand);
}
