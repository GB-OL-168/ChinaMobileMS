package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.InvestigationScoreMapper;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationScoreService;

@Service
public class InvestigationScoreServiceImpl implements InvestigationScoreService{
	@Autowired
	private InvestigationScoreMapper investigationScoreMapper;
	@Override
	public int insertScore(String grade, String investigationUserName, int investigationItemId) {
		// TODO Auto-generated method stub
		return investigationScoreMapper.insertGrade(grade, investigationUserName, investigationItemId);
	}

}
