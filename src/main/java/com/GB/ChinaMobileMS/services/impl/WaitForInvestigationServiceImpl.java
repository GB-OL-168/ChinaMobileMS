package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.WaitForInvestigationMapper;
import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;
import com.GB.ChinaMobileMS.services.interfaces.WaitForInvestigationService;
@Service
public class WaitForInvestigationServiceImpl implements WaitForInvestigationService{
	@Autowired
	private WaitForInvestigationMapper waitForInvestigationMapper;
	@Override
	public List<WaitForInvestigationUserEntity> findWaitByUserName(String watiUserName) {
		// TODO Auto-generated method stub
		return waitForInvestigationMapper.findAllWaitForInvestigationUserEntity(watiUserName);
	}
	@Override
	public boolean updateIsFill(int investigationId,String waitUserName) {
		// TODO Auto-generated method stub
		return waitForInvestigationMapper.updateIsFill(investigationId,waitUserName);
	}
	@Override
	public boolean deleteWaitForInvestigationUserByInvestigationId(int investigationId) {
		// TODO Auto-generated method stub
		return waitForInvestigationMapper.deleteWaitForInvestigationUserByInvestigationId(investigationId);
	}
	

}
