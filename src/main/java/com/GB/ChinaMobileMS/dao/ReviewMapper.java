package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.ReviewEntity;

public interface ReviewMapper {
	public int insertReview(ReviewEntity reviewEntity);

	public List<ReviewEntity> queryReview(String vertifyUser);

	public List<PropertyServiceEntity> queryPropertyTableByVertifyUser(String vertifyUser);

	public ReviewEntity queryReviewEntityByPropertyID(int propertyID);

	public boolean updateReviewStatus(@Param("id") int id, @Param("status") int status, @Param("stage")String stage, @Param("flowInfo")String flowInfo);
	
	public boolean updateReviewCompanyVertifyUser(@Param("id") int id, @Param("vertifyUser")String vertifyUser);
	
}
