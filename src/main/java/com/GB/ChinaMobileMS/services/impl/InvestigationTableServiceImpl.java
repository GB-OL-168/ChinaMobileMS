package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.InvestigationTableMapper;
import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
@Service
public class InvestigationTableServiceImpl implements InvestigationTableService{
	@Autowired
	private InvestigationTableMapper investigationTableMapper;
	@Override
	public int insertMessage(InvestigationTableEntity investigationTableEntity) {
		// TODO Auto-generated method stub
	
		return investigationTableMapper.insertTableMessage(investigationTableEntity);
	}
	@Override
	public List<InvestigationTableEntity> getInvestigationTableEntityByUserName(String userName) {
		// TODO Auto-generated method stub
		return investigationTableMapper.findByUserName(userName);
	}
	@Override
	public boolean uptdateIsFill(int investigationId) {
		// TODO Auto-generated method stub
		return investigationTableMapper.updateIsFill(investigationId);
	}
	public InvestigationTableEntity getInvestigationTableEntityByid(int investigationId){
		return investigationTableMapper.findByInvestigationId(investigationId);
	}
}
