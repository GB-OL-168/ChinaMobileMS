package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.AssetLoanDeviceMapper;
import com.GB.ChinaMobileMS.entity.AssetLoanDevice;
import com.GB.ChinaMobileMS.services.interfaces.AssetLoanDeviceService;

@Service
public class AssetLoanDeviceServiceImpl implements AssetLoanDeviceService{
	@Autowired
	private AssetLoanDeviceMapper aldMapper;
	@Override
	public String addLoanDevice(AssetLoanDevice ald) {
		System.out.println("Enter addLoanDevice ");
		int i = aldMapper.addLoanDevice(ald);
		return "done";
	}

}
