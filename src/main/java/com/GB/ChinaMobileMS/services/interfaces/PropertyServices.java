package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;

public interface PropertyServices {
	public List<PropertyServiceEntity> auditParty();
	public boolean setStatus(int id,int status);
}
