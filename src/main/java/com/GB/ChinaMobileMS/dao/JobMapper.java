package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.JobEntity;

public interface JobMapper {
	public JobEntity queryJobByJobID(int jobID);
	public List<JobEntity> queryJob();
}
