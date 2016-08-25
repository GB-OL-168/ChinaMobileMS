package com.GB.ChinaMobileMS.dao;

import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;

public interface ServiceManagementSendMapper {
	
	public InvestigationTableEntity queryInvestigationTableByID(int investigationId);
	
	int updateInvestigationTable(InvestigationTableEntity investigationTableEntity);
	
	int insertWaitForInvestigatUser(int branchId,int investigationId,int flag);
	
	int updateWaitForInvestigatUser(InvestigationTableEntity investigationTableEntity);

}