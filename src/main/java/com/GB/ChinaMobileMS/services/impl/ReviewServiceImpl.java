package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.ReviewMapper;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.ReviewEntity;
import com.GB.ChinaMobileMS.services.interfaces.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewMapper reviewMapper;
	
	@Override
	public List<ReviewEntity> getReviews(String vertifyUser) {
		try{
			return reviewMapper.queryReview(vertifyUser);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 开启审核流程，插入审核表数据
	 */
	@Override
	public boolean startReview(int propertyTableId, String excutionID, String branchVertifyUserID, String companyVertifyUserID) {
		try{
			ReviewEntity entity = new ReviewEntity();
			entity.setPropertyTableId(propertyTableId);
			entity.setStatus(0);
			entity.setExcutionId(excutionID);
			entity.setStage("进入一审");
			entity.setBranchVertifyUser(branchVertifyUserID);
			entity.setCompanyVertifyUser(companyVertifyUserID);
			entity.setFlowInfo("待一审");

			int insertResert = reviewMapper.insertReview(entity);
			if (insertResert == 0) {
				System.out.println("审核数据插入失败");
				return false;
			}
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * 根据审核人的id查询申请表
	 */
	@Override
	public List<PropertyServiceEntity> getPropertyTableByVertifyUser(String vertifyUser) {
		try{
			return reviewMapper.queryPropertyTableByVertifyUser(vertifyUser);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public ReviewEntity getReviewByPropertyID(int propertyID) {
		try{
			return reviewMapper.queryReviewEntityByPropertyID(propertyID);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean modifyReviewStatus(int id, int status, String stage, String flowInfo) {
		try{
			return reviewMapper.updateReviewStatus(id, status, stage, flowInfo);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean modifyReviewCompanyVertifyUser(int id, String vertifyUserName) {
		try{
			return reviewMapper.updateReviewCompanyVertifyUser(id, vertifyUserName);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
