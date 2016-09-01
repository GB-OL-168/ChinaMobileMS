package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.AssetHousingMapper;
import com.GB.ChinaMobileMS.entity.AssetHousing;
import com.GB.ChinaMobileMS.services.interfaces.AssetHousingService;

@Service
public class AssetHousingServiceImpl implements AssetHousingService {

	@Autowired
	public AssetHousingMapper ashMapper;

	public String addAssetHousing(AssetHousing ash) {

		if(ash.getIsLoan()==0)
		{
			ash.setLoanTimeStart(null);
			ash.setLoanTimeEnd(null);
			ash.setLoanSource("无");
		}

		ashMapper.addAssetHousing(ash);
		return "done";
	}

	public List<AssetHousing> queryAssetHousing() {
		List<AssetHousing> listash = ashMapper.queryAssetHousing();

		return listash;
	}

	public List<AssetHousing> queryAssetHousing2() {

		List<AssetHousing> listash = ashMapper.queryAssetHousing2();

		return listash;
	}

	public AssetHousing detailed(int assetInfoId) {

		AssetHousing ash = ashMapper.detailed(assetInfoId);

		return ash;
	}

	public List<AssetHousing> searchAssetHousing(String houses, String search) {


		if (houses.equals("companyName")) {
			List<AssetHousing> ash = ashMapper
					.queryAssetHousingByCompanyName(search);
			return ash;
		} else if (houses.equals("buildingName")) {
			List<AssetHousing> ash = ashMapper
					.queryAssetHousingByBuildingName(search);
			return ash;
		} else if (houses.equals("location")) {
			List<AssetHousing> ash = ashMapper
					.queryAssetHousingBylocation(search);
			return ash;
		} else {
			List<AssetHousing> ash = ashMapper
					.queryAssetHousingByBuildingArea(search);
			return ash;
		}

	}
	
	@Override
	public List<AssetHousing> getAssetHousingByCompany(int companyId) {
		return ashMapper.queryAssetHousingByCompany(companyId);
	}
}
