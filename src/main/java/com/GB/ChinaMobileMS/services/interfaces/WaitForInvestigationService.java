package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;

public interface WaitForInvestigationService {
	public List<WaitForInvestigationUserEntity> findWaitByUserName(String watiUserName);
}
