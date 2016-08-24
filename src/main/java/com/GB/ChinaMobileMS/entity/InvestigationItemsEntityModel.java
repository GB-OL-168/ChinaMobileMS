package com.GB.ChinaMobileMS.entity;

import java.util.List;

public class InvestigationItemsEntityModel {

	private List<InvestigationItemsEntity>  InvestigationItemsEntityList;

	public List<InvestigationItemsEntity> getInvestigationItemsEntityList() {
		return InvestigationItemsEntityList;
	}

	public void setInvestigationItemsEntityList(List<InvestigationItemsEntity> investigationItemsEntity) {
		InvestigationItemsEntityList = investigationItemsEntity;
	}
	
	public int size() {
		return InvestigationItemsEntityList.size();
	}
	public boolean remove(InvestigationItemsEntity entity){
		return InvestigationItemsEntityList.remove(entity);
	}
}
