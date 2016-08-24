package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.BranchEntity;

public interface BranchService {
	public BranchEntity getBranchManager(int branchID);
	public List<BranchEntity> queryBranch();
}
