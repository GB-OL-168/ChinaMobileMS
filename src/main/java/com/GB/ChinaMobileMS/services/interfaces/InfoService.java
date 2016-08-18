package com.GB.ChinaMobileMS.services.interfaces;

import com.GB.ChinaMobileMS.entity.Information;

public interface InfoService {
	
	int updateInfo(Information info);
	Information findbyInfoID();
}
