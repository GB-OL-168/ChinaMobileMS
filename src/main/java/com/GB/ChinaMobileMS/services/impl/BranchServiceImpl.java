package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.BranchMapper;
import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;

@Service
public class BranchServiceImpl implements BranchService {

	@Autowired
	private BranchMapper branchMapper;
	
	@Override
	public BranchEntity getBranchManager(int branchID) {
		BranchEntity entity = branchMapper.queryBranchByID(branchID);
		return entity;
	}
}
