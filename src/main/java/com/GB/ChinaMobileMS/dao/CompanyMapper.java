package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.CompanyEntity;

public interface CompanyMapper {
	public CompanyEntity queryCompanyByID(int companyID);
	public List<CompanyEntity> queryCompany();
	
	public List<CompanyEntity> queryCompanyByName(String companyName);
	public List<CompanyEntity> listcompany();
}