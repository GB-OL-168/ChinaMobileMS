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
	
	//构造函数，便于登记后调用
	CompanyQuery(){
		
	}
	
	//上市公司资产信息查询页面跳转控制
	@RequestMapping(value = "/companyquery/{id}", method = RequestMethod.GET)
	public ModelAndView CompanyQuery(@PathVariable("id") String id) {
		Map map = new HashMap();
		if (id.equals("houses")) {
			List<AssetHousing> listash = ashService.queryAssetHousing2();//获取上市公司资产建筑信息
			map.put("listash", listash);
			return new ModelAndView("/function/company-query-houses", map);//跳转到上市公司资产建筑信息查询页面
		} else if (id.equals("rooms")) {
			List<AssetHouse> listroom = roomService.queryAssetHouse2();//获取上市公司资产房间信息
			map.put("listroom", listroom);
			return new ModelAndView("/function/company-query-rooms", map);//跳转到上市公司资产房间信息
		} else if (id.equals("furniture")) {
			List<AssetFurniture> listasf = asfService.queryAssetFurniture();//获取上市公司资产家具信息
			map.put("listasf", listasf);
			return new ModelAndView("/function/company-query-furniture", map);//跳转到上市公司家具查询页面
		} else if (id.equals("lease")) {
			List<AssetLoanDevice> listald = aldService.queryLoanDevice();//获取上市公司租赁设备信息
			map.put("listald", listald);
			return new ModelAndView("/function/company-query-lease", map);//跳转到上市公司租赁设备查询页面
		} else
			return new ModelAndView("forward:/");
	}

	//上市公司资产建筑详情
	@RequestMapping(value = "/detailed/{id}/{assetInfoId}", method = RequestMethod.GET)
	public ModelAndView DetailedQuery(@PathVariable("id") String id,
			@PathVariable("assetInfoId") int assetInfoId) {
		Map map = new HashMap();
		if (id.equals("house")) {
			AssetHousing ash = ashService.detailed(assetInfoId);//获取建筑详情
			map.put("ash", ash);
			return new ModelAndView(
					"/function/company-query-houses-detailed_information", map);//挑战详情页面
		} else
			return new ModelAndView("forward:/");

	}
	
	
	//登记后跳转控制
	public ModelAndView CompanyQueryAfterRegister(String id) {
		Map map = new HashMap();
		if (id.equals("houses")) {
			List<AssetHousing> listash = ashService.queryAssetHousing2();//获取上市公司资产建筑信息
			map.put("listash", listash);
			ModelAndView a = new ModelAndView(
					"/function/company-query-houses", map);//跳转到上市公司资产建筑信息查询页面
			a.addObject("flag", 1);
			return a;
		} else if (id.equals("rooms")) {
			List<AssetHouse> listroom = roomService.queryAssetHouse2();//获取上市公司资产房间信息
			map.put("listroom", listroom);
			ModelAndView a = new ModelAndView(
					"/function/company-query-rooms", map);//跳转到上市公司资产房间信息
			a.addObject("flag", 2);
			return a;
		} else if (id.equals("furniture")) {
			List<AssetFurniture> listasf = asfService.queryAssetFurniture();//获取上市公司资产家具信息
			map.put("listasf", listasf);
			ModelAndView a = new ModelAndView(
					"/function/company-query-furniture", map);//跳转到上市公司家具查询页面
			a.addObject("flag", 3);
			return a;
		} else if (id.equals("lease")) {
			List<AssetLoanDevice> listald = aldService.queryLoanDevice();//获取上市公司租赁设备信息
			map.put("listald", listald);
			ModelAndView a = new ModelAndView(
					"/function/company-query-lease", map);//跳转到上市公司家具查询页面
			a.addObject("flag", 4);
			return a;
		} else
			return new ModelAndView("forward:/");
	}
	
	//上市公司资产建筑搜索
	@RequestMapping(value="/searchHouse",method = RequestMethod.GET)
	public ModelAndView SearchHouse(String houses,String search,HttpSession session)
	{
		Map map = new HashMap();
		List<AssetHousing> listash = ashService.searchAssetHousing(houses, search);
		map.put("listash", listash);
		return new ModelAndView("/function/company-query-houses", map);
	}
	
	//上市公司资产房间搜索
	@RequestMapping(value="/searchRoom",method = RequestMethod.GET)
	public ModelAndView SearchRoom(String room,String search,HttpSession session)
	{
		Map map = new HashMap();
		List<AssetHouse> listroom =roomService.searchAssetHouse(room, search);
		map.put("listroom", listroom);
		return new ModelAndView("/function/company-query-rooms", map);
	}
	
	//上市公司资产家具搜索
	@RequestMapping(value="/searchASF",method = RequestMethod.GET)
	public ModelAndView SearchASF(String asf,String search,HttpSession session)
	{
		Map map = new HashMap();
		List<AssetFurniture> listasf =asfService.search(asf, search);
		map.put("listasf", listasf);
		return new ModelAndView("/function/company-query-furniture", map);
	}
	
	//上市公司资产租赁搜索
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