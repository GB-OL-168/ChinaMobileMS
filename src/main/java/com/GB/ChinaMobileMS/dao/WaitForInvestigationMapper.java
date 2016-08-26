package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;
public interface WaitForInvestigationMapper {
	public List<WaitForInvestigationUserEntity> findAllWaitForInvestigationUserEntity(String waitUserName);
	public boolean updateIsFill(@Param ("investigationId")int investigationId,@Param("waitUserName") String waitUserName);
	public boolean deleteWaitForInvestigationUserByInvestigationId(int investigationId);
}
