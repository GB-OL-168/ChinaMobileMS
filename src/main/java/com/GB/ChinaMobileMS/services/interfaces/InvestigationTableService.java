package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;


import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;

public interface InvestigationTableService {
	public int insertMessage(InvestigationTableEntity investigationTableEntity);
	public List<InvestigationTableEntity> getInvestigationTableEntityByUserName(String userName);
	public boolean uptdateIsFill(int investigationId);
	public InvestigationTableEntity getInvestigationTableEntityByid(int investigationId);
	public boolean deleteInvestiationTableById(int investigationId);
}
