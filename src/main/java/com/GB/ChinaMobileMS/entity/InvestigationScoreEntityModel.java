package com.GB.ChinaMobileMS.entity;

import java.util.List;

public class InvestigationScoreEntityModel {
	private List<InvestigationScoreEntity> investigationScoreEntityList;

	public List<InvestigationScoreEntity> getInvestigationScoreEntityList() {
		return investigationScoreEntityList;
	}

	public void setInvestigationScoreEntityList(List<InvestigationScoreEntity> investigationScoreEntityList) {
		this.investigationScoreEntityList = investigationScoreEntityList;
	}
	public int size(){
		return investigationScoreEntityList.size();
	}
}
