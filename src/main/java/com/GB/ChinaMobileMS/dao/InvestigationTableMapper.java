package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;

public interface InvestigationTableMapper {
	public int insertTableMessage(InvestigationTableEntity investigationTableEntity);
	public List<InvestigationTableEntity> findByUserName (String userName);
	public boolean updateIsFill(int investigationId);
	public InvestigationTableEntity findByInvestigationId (int investigationId);
}
