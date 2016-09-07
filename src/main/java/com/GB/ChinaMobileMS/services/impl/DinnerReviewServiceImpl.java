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
		try {
			return dinnerReviewMapper.queryDinnerReview(vertifyUser);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean startDinnerReview(int dinnerPropertyTableId, String excutionID, String branchVertifyUserID,
			String companyVertifyUserID) {
		try{
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
		} catch(Exception e){
			e.printStackTrace();
			return false;
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
	public DinnerReviewEntity getDinnerReviewByPropertyID(int dinnerPropertyID) {
		try {
			return dinnerReviewMapper.queryDinnerReviewEntityByDinnerPropertyID(dinnerPropertyID);
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
	public boolean modifyDinnerReviewCompanyVertifyUser(int id, String vertifyUserName) {
		try {
			return dinnerReviewMapper.updateDinnerReviewCompanyVertifyUser(id, vertifyUserName);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
