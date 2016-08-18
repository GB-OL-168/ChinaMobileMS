package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;

public interface PropertyApplicantService {
	
	/**
	 * @Cindy
	 *填写物业服务申请
	 */
	String addPropertyApplicant(PropertyServiceEntity propertyApplicant);
	
	List<PropertyServiceEntity> listPropertyApplicant();
}
