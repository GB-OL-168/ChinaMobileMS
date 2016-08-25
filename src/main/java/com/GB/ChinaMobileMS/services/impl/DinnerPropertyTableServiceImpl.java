package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.DinnerPropertyTableMapper;
import com.GB.ChinaMobileMS.dao.DinnerReviewMapper;
import com.GB.ChinaMobileMS.entity.DinnerPropertyTableEntity;
import com.GB.ChinaMobileMS.services.interfaces.DinnerPropertyTableService;

@Service
public class DinnerPropertyTableServiceImpl implements DinnerPropertyTableService {

	@Autowired
	private DinnerPropertyTableMapper dinnerPropertyMapper;
	@Autowired
	private DinnerReviewMapper dinnerReviewMapper;
	
	@Override
	public int addDinnerPropertyTable(DinnerPropertyTableEntity dinnerProperty) {
		if(dinnerPropertyMapper.insertDinnerProperty(dinnerProperty))
			return dinnerPropertyMapper.queryDinnerPropertyTableByApplyTime(dinnerProperty).getDinnerPropertyTableId();
		else
			return 0;
	}

	@Override
	public List<DinnerPropertyTableEntity> getAllDinnerPropertyTableByUserName(String UserName) {
		return dinnerPropertyMapper.queryAllDinnerPropertyTableByUserName(UserName);
	}

	@Override
	public DinnerPropertyTableEntity getDinnerPropertyTableById(int tableID) {
		return dinnerPropertyMapper.queryDinnerPropertyTableByID(tableID);
	}

	@Override
	public List<DinnerPropertyTableEntity> getDinnerPropertyTableByVertifyUser(String vertifyUser) {
		return dinnerReviewMapper.queryDinnerPropertyTableByVertifyUser(vertifyUser);
	}

	@Override
	public boolean modifyDinnerReviewStatus(int id, int status, String stage) {
		return dinnerReviewMapper.updateDinnerReviewStatus(id, status, stage);
	}

	@Override
	public boolean setDinnerTableStatus(int id, int status) {
		return dinnerPropertyMapper.updateDinnerTableStatus(id, status);
	}

	@Override
	public List<DinnerPropertyTableEntity> getAllDinnerPropertyTable() {
		return dinnerPropertyMapper.queryAllDinnerPropertyTable();
	}

}
