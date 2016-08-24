package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;
public interface WaitForInvestigationMapper {
	public List<WaitForInvestigationUserEntity> findAllWaitForInvestigationUserEntity(String waitUserName);
}
