package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

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

	@Override
	public List<CompanyEntity> queryCompany() {
		// TODO Auto-generated method stub
		return companyMapper.queryCompany();
	}
	
	@Override
	public List<CompanyEntity> getCompanyByName(String companyName) {
		return companyMapper.queryCompanyByName(companyName);
	}
	@Override
	public List<CompanyEntity> listcompany() {
		return companyMapper.listcompany();
	}
	
}
