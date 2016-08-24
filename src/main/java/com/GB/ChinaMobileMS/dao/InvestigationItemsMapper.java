package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;

public interface InvestigationItemsMapper {
	public List<InvestigationItemsEntity> findInvestigationItems(int investigationTableId);
	public int insertInvestigationItems(List<InvestigationItemsEntity> investigationItemsEntity);

}
