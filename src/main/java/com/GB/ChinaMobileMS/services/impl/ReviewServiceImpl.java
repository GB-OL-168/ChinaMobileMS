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
		return reviewMapper.queryReview(vertifyUser);
	}

	/**
	 * 开启审核流程，插入审核表数据
	 */
	@Override
	public boolean startReview(int propertyTableId, String excutionID, String vertifyUserID) {
		ReviewEntity entity = new ReviewEntity();
		entity.setPropertyTableId(propertyTableId);
		entity.setStatus(0);
		entity.setExcutionId(excutionID);
		entity.setStage("申请");
		entity.setVertifyUser(vertifyUserID);
		entity.setFlowInfo("未审核");

		int insertResert = reviewMapper.insertReview(entity);
		if (insertResert == 0) {
			System.out.println("审核数据插入失败");
			return false;
		}
		return true;
	}

	/**
	 * 根据审核人的id查询申请表
	 */
	@Override
	public List<PropertyServiceEntity> getPropertyTableByVertifyUser(String vertifyUser) {
		return reviewMapper.queryPropertyTableByVertifyUser(vertifyUser);
	}

}
