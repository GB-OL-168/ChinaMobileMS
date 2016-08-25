package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.DinnerReviewMapper;
import com.GB.ChinaMobileMS.entity.DinnerPropertyTableEntity;
import com.GB.ChinaMobileMS.entity.DinnerReviewEntity;
import com.GB.ChinaMobileMS.services.interfaces.DinnerReviewService;

@Service
public class DinnerReviewServiceImpl implements DinnerReviewService {

	@Autowired
	private DinnerReviewMapper dinnerReviewMapper;
	
	@Override
	public List<DinnerReviewEntity> getDinnerReviews(String vertifyUser) {
		return dinnerReviewMapper.queryDinnerReview(vertifyUser);
	}

	@Override
	public boolean startDinnerReview(int dinnerPropertyTableId, String excutionID, String branchVertifyUserID,
			String companyVertifyUserID) {
		DinnerReviewEntity entity = new DinnerReviewEntity();
		entity.setDinnerPropertyTableId(dinnerPropertyTableId);
		entity.setStatus(0);
		entity.setExcutionId(excutionID);
		entity.setStage("进入一审");
		entity.setBranchVertifyUser(branchVertifyUserID);
		entity.setCompanyVertifyUser(companyVertifyUserID);
		int insertResert = dinnerReviewMapper.insertDinnerReview(entity);
		if (insertResert == 0) {
			System.out.println("审核数据插入失败");
			return false;
		}
		return true;
	}

	@Override
	public List<DinnerPropertyTableEntity> getDinnerPropertyTableByVertifyUser(String vertifyUser) {
		return dinnerReviewMapper.queryDinnerPropertyTableByVertifyUser(vertifyUser);
	}

	@Override
	public DinnerReviewEntity getDinnerReviewByPropertyID(int dinnerPropertyID) {
		return dinnerReviewMapper.queryDinnerReviewEntityByDinnerPropertyID(dinnerPropertyID);
	}

	@Override
	public boolean modifyDinnerReviewStatus(int id, int status, String stage) {
		return dinnerReviewMapper.updateDinnerReviewStatus(id, status, stage);
	}

	@Override
	public boolean modifyDinnerReviewCompanyVertifyUser(int id, String vertifyUserName) {
		return dinnerReviewMapper.updateDinnerReviewCompanyVertifyUser(id, vertifyUserName);
	}

}
