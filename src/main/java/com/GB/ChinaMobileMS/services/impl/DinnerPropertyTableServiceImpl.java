package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Transactional
	@Override
	public int addDinnerPropertyTable(DinnerPropertyTableEntity dinnerProperty)  {
		try {
			if(dinnerPropertyMapper.insertDinnerProperty(dinnerProperty))
				return dinnerPropertyMapper.queryDinnerPropertyTableByApplyTime(dinnerProperty).getDinnerPropertyTableId();
			else
				return 0;
		} catch (Exception e){
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<DinnerPropertyTableEntity> getAllDinnerPropertyTableByUserName(String UserName) {
		try {
			return dinnerPropertyMapper.queryAllDinnerPropertyTableByUserName(UserName);
		} catch (Exception e){
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public DinnerPropertyTableEntity getDinnerPropertyTableById(int tableID) {
		try {
			return dinnerPropertyMapper.queryDinnerPropertyTableByID(tableID);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<DinnerPropertyTableEntity> getDinnerPropertyTableByVertifyUser(String vertifyUser) {
		try {
			return dinnerReviewMapper.queryDinnerPropertyTableByVertifyUser(vertifyUser);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean modifyDinnerReviewStatus(int id, int status, String stage) {
		try {
			return dinnerReviewMapper.updateDinnerReviewStatus(id, status, stage);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean setDinnerTableStatus(int id, int status) {
		try {
			return dinnerPropertyMapper.updateDinnerTableStatus(id, status);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<DinnerPropertyTableEntity> getAllDinnerPropertyTable() {
		try {
			return dinnerPropertyMapper.queryAllDinnerPropertyTable();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
