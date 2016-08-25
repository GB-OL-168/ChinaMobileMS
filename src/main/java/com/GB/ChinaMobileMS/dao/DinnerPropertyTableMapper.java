package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.GB.ChinaMobileMS.entity.DinnerPropertyTableEntity;

public interface DinnerPropertyTableMapper {
	public boolean insertDinnerProperty(DinnerPropertyTableEntity dinnerProperty);
	public DinnerPropertyTableEntity queryDinnerPropertyTableByApplyTime(DinnerPropertyTableEntity dinnerProperty);
	public List<DinnerPropertyTableEntity> queryAllDinnerPropertyTableByUserName(String userName);
	public DinnerPropertyTableEntity queryDinnerPropertyTableByID(int tableID);
	public boolean updateDinnerTableStatus(@Param("id")int id, @Param("status")int status);
	public List<DinnerPropertyTableEntity> queryAllDinnerPropertyTable();
}
