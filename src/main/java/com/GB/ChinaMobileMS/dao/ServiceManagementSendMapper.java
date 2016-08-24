package com.GB.ChinaMobileMS.dao;

import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;

public interface ServiceManagementSendMapper {
	
	public InvestigationTableEntity querySendByID(int investigationId);
	
	int updateSendService(InvestigationTableEntity sendService);

}