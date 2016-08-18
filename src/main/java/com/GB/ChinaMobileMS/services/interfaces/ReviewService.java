package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.ReviewEntity;

public interface ReviewService {
	public List<ReviewEntity> getReviews(String vertifyUser);
	public boolean startReview(int propertyTableId, String excutionID, String vertifyUserID);
	public List<PropertyServiceEntity> getPropertyTableByVertifyUser(String vertifyUser);
}
