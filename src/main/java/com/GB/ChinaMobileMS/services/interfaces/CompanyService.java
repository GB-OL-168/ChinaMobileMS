package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.CompanyEntity;

public interface CompanyService {
	public CompanyEntity getCompanyManager(int companyID);
	public List<CompanyEntity> queryCompany();
}
