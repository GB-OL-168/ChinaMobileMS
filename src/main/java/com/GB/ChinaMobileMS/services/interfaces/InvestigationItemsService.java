package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntitySet;


public interface InvestigationItemsService {
	public int inserItems(List<InvestigationItemsEntity> entityList,String userName,String investigationName);
	public List<InvestigationItemsEntity> getInvestigationItems(int investigationTableId);
	public boolean deleteInvestigationItemsByInvestigationId(int investigationId);
	public List<InvestigationScoreEntitySet> getStatistics(int id);
}
