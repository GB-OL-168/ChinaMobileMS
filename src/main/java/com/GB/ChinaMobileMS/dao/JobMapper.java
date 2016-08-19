package com.GB.ChinaMobileMS.dao;

import com.GB.ChinaMobileMS.entity.JobEntity;

public interface JobMapper {
	public JobEntity queryJobByJobID(int jobID);
}
