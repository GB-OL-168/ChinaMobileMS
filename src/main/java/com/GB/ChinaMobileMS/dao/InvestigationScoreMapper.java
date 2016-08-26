package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntity;
public interface InvestigationScoreMapper {
	public int insertGrade(@Param ("grade")String grade,@Param("investigationUserName")String investigationUserName,@Param("investigationItemId") int investigationItemId);
	public	List<InvestigationScoreEntity> findByInvestigationItemId(int investigationItemId);
	public	boolean deleteInvestigationScoreByInvestigationItemId(int investigationItemId);
}
