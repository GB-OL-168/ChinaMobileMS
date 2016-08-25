package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.AssetFurniture;
import com.GB.ChinaMobileMS.entity.AssetHouse;
import com.GB.ChinaMobileMS.entity.AssetHousing;
import com.GB.ChinaMobileMS.entity.AssetLoanDevice;
import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.services.interfaces.AssetFurnitureService;
import com.GB.ChinaMobileMS.services.interfaces.AssetHouseService;
import com.GB.ChinaMobileMS.services.interfaces.AssetHousingService;
import com.GB.ChinaMobileMS.services.interfaces.AssetLoanDeviceService;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Controller
public class CompanyQuery {
	@Autowired
	private AssetHousingService ashService;
	@Autowired
	private AssetHouseService roomService;
	@Autowired
	private AssetFurnitureService asfService;
	@Autowired
	private AssetLoanDeviceService aldService;
	@Autowired
	private UserService userSerice;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private BranchService branchService;

	@RequestMapping(value = "/companyquery/{id}", method = RequestMethod.GET)
	public ModelAndView CompanyQuery(@PathVariable("id") String id) {
		Map map = new HashMap();
		if (id.equals("houses")) {
			List<AssetHousing> listash = ashService.queryAssetHousing2();
			map.put("listash", listash);
			return new ModelAndView("/function/company-query-houses", map);
		} else if (id.equals("rooms")) {
			List<AssetHouse> listroom = roomService.queryAssetHouse2();
			System.out.println("listroom" + listroom);
			map.put("listroom", listroom);
			return new ModelAndView("/function/company-query-rooms", map);
		} else if (id.equals("furniture")) {
			List<AssetFurniture> listasf = asfService.queryAssetFurniture();
			map.put("listasf", listasf);
			return new ModelAndView("/function/company-query-furniture", map);
		} else if (id.equals("lease")) {
			List<AssetLoanDevice> listald = aldService.queryLoanDevice();
			List<AssetLoanDevice> listald2 = aldService.queryLoanDevice2();
			map.put("listald", listald);
			map.put("listald2", listald2);
			return new ModelAndView("/function/company-query-lease", map);
		} else
			return new ModelAndView("forward:/");
	}

	@RequestMapping(value = "/detailed/{id}/{assetInfoId}", method = RequestMethod.GET)
	public ModelAndView DetailedQuery(@PathVariable("id") String id,
			@PathVariable("assetInfoId") int assetInfoId) {
		Map map = new HashMap();
		if (id.equals("house")) {
			AssetHousing ash = ashService.detailed(assetInfoId);
			map.put("ash", ash);
			return new ModelAndView(
					"/function/company-query-houses-detailed_information", map);
		} else
			return new ModelAndView("forward:/");

	}
}