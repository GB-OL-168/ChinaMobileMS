package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.ServiceManagementSendMapper;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.services.interfaces.ServiceManagementSendService;

@Service
public class ServiceManagementSendServiceImpl implements ServiceManagementSendService {
	
	@Autowired
	private ServiceManagementSendMapper serviceManagementSendMapper;
	
	@Override
	public InvestigationTableEntity getInvestigationTableByID(int investigationId) {
		InvestigationTableEntity investigationTableEntity = serviceManagementSendMapper.queryInvestigationTableByID(investigationId);
		return investigationTableEntity;
	}

	public String updateServiceManagementSend(InvestigationTableEntity investigationTableEntity) {
		
		int updateResult = serviceManagementSendMapper.updateInvestigationTable(investigationTableEntity);
		int updateResult2 = serviceManagementSendMapper.updateWaitForInvestigatUser(investigationTableEntity);
		
		System.out.println("updateResult = "  + updateResult);
		return null;
	}
	
    public int insertServiceManagementSend(int branchId,int investigationId,int flag) {
		
		int insertResult = serviceManagementSendMapper.insertWaitForInvestigatUser(branchId,investigationId,flag);	
		
		System.out.println("insertResult = "  + insertResult);
		return 0;
	}
}
