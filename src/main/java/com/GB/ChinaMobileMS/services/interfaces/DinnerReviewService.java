package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.DinnerPropertyTableEntity;
import com.GB.ChinaMobileMS.entity.DinnerReviewEntity;

public interface DinnerReviewService {
	public List<DinnerReviewEntity> getDinnerReviews(String vertifyUser);
	public boolean startDinnerReview(int dinnerPropertyTableId, String excutionID, String branchVertifyUserID, String companyVertifyUserID);
	public List<DinnerPropertyTableEntity> getDinnerPropertyTableByVertifyUser(String vertifyUser);
	public DinnerReviewEntity getDinnerReviewByPropertyID(int dinnerPropertyID);
	public boolean modifyDinnerReviewStatus(int id, int status, String stage);
	public boolean modifyDinnerReviewCompanyVertifyUser(int id, String vertifyUserName);
}
