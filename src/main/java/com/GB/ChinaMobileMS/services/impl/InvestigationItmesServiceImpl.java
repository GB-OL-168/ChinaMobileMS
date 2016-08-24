package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.InvestigationItemsMapper;
import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationItemsService;
@Service
public class InvestigationItmesServiceImpl implements InvestigationItemsService  {
	@Autowired
	private InvestigationItemsMapper investigationItemsMapper;

	@Override
	public int inserItems(List<InvestigationItemsEntity> entityList) {
		// TODO Auto-generated method stub
		return investigationItemsMapper.insertInvestigationItems(entityList);
	}

	@Override
	public List<InvestigationItemsEntity> getInvestigationItems(int investigationTableId) {
		// TODO Auto-generated method stub
		return investigationItemsMapper.findInvestigationItems(investigationTableId);
	}

}
