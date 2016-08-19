package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.CompanyMapper;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyMapper companyMapper;
	
	@Override
	public CompanyEntity getCompanyManager(int companyID) {
		CompanyEntity entity = companyMapper.queryCompanyByID(companyID);
		return entity;
	}

}
