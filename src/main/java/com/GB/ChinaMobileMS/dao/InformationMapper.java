package com.GB.ChinaMobileMS.dao;

import com.GB.ChinaMobileMS.entity.Information;

public interface InformationMapper {
	
	Information  findbyInfoID();
	int updateInfo(Information info);
}
