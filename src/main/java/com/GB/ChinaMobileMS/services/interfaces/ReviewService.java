package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.ReviewEntity;

public interface ReviewService {
	public List<ReviewEntity> getReviews(String vertifyUser);
	public boolean startReview(int propertyTableId, String excutionID, String branchVertifyUserID, String companyVertifyUserID);
	public List<PropertyServiceEntity> getPropertyTableByVertifyUser(String vertifyUser);
	public ReviewEntity getReviewByPropertyID(int propertyID);
	public boolean modifyReviewStatus(int id, int status, String stage, String flowInfo);
	public boolean modifyReviewCompanyVertifyUser(int id, String vertifyUserName);
}
