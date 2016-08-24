package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;

public interface InvestigationItemsService {
	public int inserItems(List<InvestigationItemsEntity> entityList);
	public List<InvestigationItemsEntity> getInvestigationItems(int investigationTableId);
}
