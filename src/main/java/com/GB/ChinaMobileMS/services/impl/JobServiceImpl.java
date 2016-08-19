package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.JobMapper;
import com.GB.ChinaMobileMS.entity.JobEntity;
import com.GB.ChinaMobileMS.services.interfaces.JobService;

@Service
public class JobServiceImpl implements JobService {

	@Autowired
	private JobMapper jobMapper;
	
	@Override
	public JobEntity getJobByJobID(int jobID) {
		System.out.println("\n\n=================");
		System.out.println("jobMapper is null? ");
		System.out.println(jobMapper == null);
		System.out.println("=====================\n\n");
		return jobMapper.queryJobByJobID(jobID);
	}
}
