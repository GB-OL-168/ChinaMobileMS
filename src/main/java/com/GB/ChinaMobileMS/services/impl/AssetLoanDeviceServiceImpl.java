package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.AssetLoanDeviceMapper;
import com.GB.ChinaMobileMS.entity.AssetLoanDevice;
import com.GB.ChinaMobileMS.services.interfaces.AssetLoanDeviceService;

@Service
public class AssetLoanDeviceServiceImpl implements AssetLoanDeviceService {
	@Autowired
	private AssetLoanDeviceMapper aldMapper;

	@Override
	public String addLoanDevice(AssetLoanDevice ald) {
		System.out.println("Enter addLoanDevice ");
		int i = aldMapper.addLoanDevice(ald);
		return "done";
	}

	public List<AssetLoanDevice> queryLoanDevice() {
		System.out.println("Enter queryLoanDevice ");

		List<AssetLoanDevice> listald = aldMapper.queryLoanDevice();

		return listald;
	}

	public List<AssetLoanDevice> queryLoanDevice2() {
		System.out.println("Enter queryLoanDevice2 ");

		List<AssetLoanDevice> listald = aldMapper.queryLoanDevice2();

		return listald;
	}

	@Override
	public List<AssetLoanDevice> search(String loean, String search) {
		if (loean.equals("type")) {
			List<AssetLoanDevice> listald = aldMapper.queryLoanDeviceByType(search);
			return listald;
		} else if (loean.equals("brand")) {
			List<AssetLoanDevice> listald = aldMapper.queryLoanDeviceByBrand(search);
			return listald;
		} else if (loean.equals("batch")) {
			List<AssetLoanDevice> listald = aldMapper.queryLoanDeviceByBatch(search);
			return listald;
		} else {
			List<AssetLoanDevice> listald = aldMapper.queryLoanDeviceByLoanInfoId(search);
			return listald;
		}
		
	}

	@Override
	public List<AssetLoanDevice> search2(String loean, String search) {
		if (loean.equals("type")) {
			List<AssetLoanDevice> listald = aldMapper.queryLoanDeviceByType2(search);
			return listald;
		} else if (loean.equals("brand")) {
			List<AssetLoanDevice> listald = aldMapper.queryLoanDeviceByBrand2(search);
			return listald;
		} else if (loean.equals("batch")) {
			List<AssetLoanDevice> listald = aldMapper.queryLoanDeviceByBatch2(search);
			return listald;
		} else {
			List<AssetLoanDevice> listald = aldMapper.queryLoanDeviceByLoanInfoId2(search);
			return listald;
		}
	}
	
	@Override
	public String getLoanDeviceSumByCompany(int companyId) {
		return aldMapper.getLoanDeviceSumByCompany(companyId);
	}
}
