package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;

public interface InvestigationItemsMapper {
	public List<InvestigationItemsEntity> findInvestigationItemsByInvestigationTableId(int investigationTableId);
	public int insertInvestigationItems(List<InvestigationItemsEntity> investigationItemsEntity);
	public boolean deleteInvestigationItemsByInvestigationId(int investigationId);
}
