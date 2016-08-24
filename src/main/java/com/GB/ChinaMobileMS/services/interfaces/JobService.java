package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.JobEntity;

public interface JobService {
	public JobEntity getJobByJobID(int jobID);
	public List<JobEntity> queryJob();
}
