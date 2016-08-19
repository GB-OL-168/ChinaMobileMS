package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.ReviewEntity;

public interface ReviewMapper {
	public int insertReview(ReviewEntity reviewEntity);
	public List<ReviewEntity> queryReview(String vertifyUser);
	public List<PropertyServiceEntity> queryPropertyTableByVertifyUser(String vertifyUser);
}
