package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.InvestigationScoreEntity;

public interface InvestigationScoreService {
	public int insertScore(String grade,String investigationUserName,int investigationItemId);
	public List<InvestigationScoreEntity> findByInvestigationItemId(int investigationItemId);
	public boolean deleteScoreByInvestigationItemId(int investigationItemId);
}
