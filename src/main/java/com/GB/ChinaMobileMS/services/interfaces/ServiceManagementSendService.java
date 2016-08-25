package com.GB.ChinaMobileMS.services.interfaces;

import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;

public interface ServiceManagementSendService {
	/**
	 * @Cindy
	 * 填写发放情况，更新investigationTable表，插入WaitForInvestigatUser表
	 */
	public InvestigationTableEntity getInvestigationTableByID(int investigationId);

	String updateServiceManagementSend(InvestigationTableEntity investigationTableEntity);
	
	int insertServiceManagementSend(int branchId,int investigationId,int flag);

}