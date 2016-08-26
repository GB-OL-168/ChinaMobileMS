package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
	CompanyQuery(){
		
	}
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
	
	public ModelAndView CompanyQueryAfterRegister(String id) {
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
	@RequestMapping(value="/searchHouse",method = RequestMethod.GET)
	public ModelAndView SearchHouse(String houses,String search,HttpSession session)
	{
		System.out.println(houses + " " + search);
		Map map = new HashMap();
		List<AssetHousing> listash = ashService.searchAssetHousing(houses, search);
		map.put("listash", listash);
		return new ModelAndView("/function/company-query-houses", map);
	}
	@RequestMapping(value="/searchRoom",method = RequestMethod.GET)
	public ModelAndView SearchRoom(String room,String search,HttpSession session)
	{
		System.out.println(room + " " + search);
		Map map = new HashMap();
		List<AssetHouse> listroom =roomService.searchAssetHouse(room, search);
		map.put("listroom", listroom);
		return new ModelAndView("/function/company-query-rooms", map);
	}
	@RequestMapping(value="/searchASF",method = RequestMethod.GET)
	public ModelAndView SearchASF(String asf,String search,HttpSession session)
	{
		System.out.println(asf + " " + search);
		Map map = new HashMap();
		List<AssetFurniture> listasf =asfService.search(asf, search);
		map.put("listasf", listasf);
		return new ModelAndView("/function/company-query-furniture", map);
	}
	@RequestMapping(value="//searchLD",method = RequestMethod.GET)
	public ModelAndView SearchLD(String loean,String search,HttpSession session)
	{
		System.out.println(loean + " " + search);
		Map map = new HashMap();
		List<AssetLoanDevice> listald = aldService.search(loean, search);
		List<AssetLoanDevice> listald2 = aldService.search2(loean, search);
		map.put("listald", listald);
		map.put("listald2", listald2);
		return new ModelAndView("/function/company-query-lease", map);
	}
}