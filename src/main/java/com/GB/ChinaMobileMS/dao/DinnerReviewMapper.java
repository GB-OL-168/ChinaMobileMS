package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.GB.ChinaMobileMS.entity.DinnerPropertyTableEntity;
import com.GB.ChinaMobileMS.entity.DinnerReviewEntity;

public interface DinnerReviewMapper {
	public int insertDinnerReview(DinnerReviewEntity dinnerReviewEntity);
	
	public List<DinnerReviewEntity> queryDinnerReview(String vertifyUser);

	public List<DinnerPropertyTableEntity> queryDinnerPropertyTableByVertifyUser(String vertifyUser);

	public DinnerReviewEntity queryDinnerReviewEntityByDinnerPropertyID(int propertyID);

	public boolean updateDinnerReviewStatus(@Param("id") int id, @Param("status") int status, @Param("stage")String stage);
	
	public boolean updateDinnerReviewCompanyVertifyUser(@Param("id") int id, @Param("vertifyUser")String vertifyUser);
}
