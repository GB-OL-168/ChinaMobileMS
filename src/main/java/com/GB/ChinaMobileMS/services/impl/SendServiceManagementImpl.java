package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.ServiceManagementSendMapper;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.services.interfaces.ServiceManagementSend;

@Service
public class SendServiceManagementImpl implements ServiceManagementSend {
	
	@Autowired
	private ServiceManagementSendMapper serviceManagementSendMapper;
	
	@Override
	public InvestigationTableEntity getInvestigationName(int investigationId) {
		InvestigationTableEntity sendEntity = serviceManagementSendMapper.querySendByID(investigationId);
		return sendEntity;
	}

	public String sendServiceManagement(InvestigationTableEntity sendService) {
		
		int updateResult = serviceManagementSendMapper.updateSendService(sendService);		
		System.out.println("updateResult = "  + updateResult);
		
		return null;
	}
}
