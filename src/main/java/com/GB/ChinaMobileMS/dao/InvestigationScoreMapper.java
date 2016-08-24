package com.GB.ChinaMobileMS.dao;

import org.apache.ibatis.annotations.Param;

public interface InvestigationScoreMapper {
	public int insertGrade(@Param ("grade")String grade,@Param("investigationUserName")String investigationUserName,@Param("investigationItemId") int investigationItemId);
}
