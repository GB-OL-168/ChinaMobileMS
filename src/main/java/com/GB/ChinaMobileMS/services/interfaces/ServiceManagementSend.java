package com.GB.ChinaMobileMS.services.interfaces;

import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;

public interface ServiceManagementSend {
	/**
	 * @Cindy
	 * 填写发放情况
	 */
	public InvestigationTableEntity getInvestigationName(int investigationId);

	String sendServiceManagement(InvestigationTableEntity sendService);

}