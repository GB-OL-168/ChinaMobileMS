package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.DinnerPropertyTableEntity;

public interface DinnerPropertyTableService {
	public int addDinnerPropertyTable(DinnerPropertyTableEntity dinnerProperty);
	public List<DinnerPropertyTableEntity> getAllDinnerPropertyTableByUserName(String UserName);
	public DinnerPropertyTableEntity getDinnerPropertyTableById(int tableID);
	public List<DinnerPropertyTableEntity> getDinnerPropertyTableByVertifyUser(String vertifyUser);
	public boolean modifyDinnerReviewStatus(int id, int status, String stage);
	public boolean setDinnerTableStatus(int id,int status);
	public List<DinnerPropertyTableEntity> getAllDinnerPropertyTable();
}
