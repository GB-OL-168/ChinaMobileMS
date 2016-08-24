package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.BranchEntity;

public interface BranchMapper {
	public BranchEntity queryBranchByID(int branchID);
	public List<BranchEntity> queryBranch();
}
