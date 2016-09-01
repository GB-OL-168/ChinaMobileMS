package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.InvestigationTableEntitySet;
import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;

public interface InvestigationTableSetService {
	public List<InvestigationTableEntitySet> getInvestigationTableEntitySetList(String formatTime,List<WaitForInvestigationUserEntity> waitForInvestigationUserEntityList) throws Exception;
}
