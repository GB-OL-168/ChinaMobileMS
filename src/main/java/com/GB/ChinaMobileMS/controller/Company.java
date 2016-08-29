package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.AssetFurniture;
import com.GB.ChinaMobileMS.entity.AssetHousing;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.services.interfaces.AssetFurnitureService;
import com.GB.ChinaMobileMS.services.interfaces.AssetHousingService;
import com.GB.ChinaMobileMS.services.interfaces.AssetLoanDeviceService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyAssetinformationService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;

@Controller
public class Company {

	@Autowired
	CompanyAssetinformationService companyassetinformationservice;
	@Autowired
	AssetFurnitureService assetFurnitureService;
	@Autowired
	CompanyService companyService;
	@Autowired
	AssetHousingService assetHousingService;
	@Autowired
	AssetLoanDeviceService assetLoanDeviceService;
	
	@RequestMapping(value = "/company/{id}", method = RequestMethod.GET)
	public ModelAndView Company(@PathVariable("id") String id,HttpServletRequest request) {
		if (id.equals("info")){		
			String condition = request.getParameter("condition"); //获得查询条件
			String queryInformation = request.getParameter("queryInformation");//获得搜索内容			
			//当搜索内容非空时执行
			if(condition!=null ){
				if(condition.equals("use")){
					List<AssetFurniture> listFuniture = companyassetinformationservice.querylistFuniturewithcon(1);
					return new ModelAndView("/function/company-info-using").addObject("listFuniture",listFuniture);
				}
				else if(condition.equals("notuse")){
					List<AssetFurniture> listFuniture = companyassetinformationservice.querylistFuniturewithcon(0);
					return new ModelAndView("/function/company-info-using").addObject("listFuniture",listFuniture);
				}
				else
					return new ModelAndView("/function/company-info-using");
			}
			//当搜索内容为空时，显示全部家具
			else{
				return GetFunitureList();
			}
		}
		else if (id.equals("count-list"))
			return new ModelAndView("/function/company-count-list");
		else
			return new ModelAndView("forward:/");
	}
	/**
	 * @办公家具
	 * @使用信息-修改
	 */
	@RequestMapping(value="/updateFurnitureInfo" , method=RequestMethod.POST)
	public ModelAndView updateFurnitureInfo(AssetFurniture assetFurn){
		assetFurnitureService.updateFurnitureInfo(assetFurn);
		return GetFunitureList();
	}
	/**
	 * @办公家具
	 * @使用信息-删除
	 */
	@RequestMapping(value="/deleteFurnitureInfo/{id}" , method=RequestMethod.GET)
	public ModelAndView deleteFurnitureInfo(@PathVariable("id") int id){
		assetFurnitureService.deleteFurnitureInfo(id);
		return GetFunitureList();
	}
	/** 
	 * @param companyEntity
	 * @信息统计-查询公司
	 */
	@RequestMapping(value="/statisticsCompany" , method=RequestMethod.POST)
	public ModelAndView statisticsCompany(CompanyEntity companyEntity,HttpServletRequest request){
		String companyName = request.getParameter("company");//获得所搜公司名称		
		List<CompanyEntity> listCompany;
		//当搜索内容非空时执行
		if(!companyName.equals("")){
			listCompany = companyService.getCompanyByName(companyName);
			Map<String, List<CompanyEntity>> map = new HashMap<String, List<CompanyEntity>>();
			map.put("listCompany", listCompany);
			return new ModelAndView("/function/company-count-list", map);
		}
		//当搜索内容为空时，显示全部公司
		else{
			listCompany = companyService.listcompany();
			Map<String, List<CompanyEntity>> map = new HashMap<String, List<CompanyEntity>>();
			map.put("listCompany", listCompany);
			return new ModelAndView("/function/company-count-list", map);
		}		
	}
	/**
	 * @param request
	 * @某公司资产统计
	 */
	@RequestMapping(value = "/companyCount", method = RequestMethod.GET)
	public ModelAndView companyCount(HttpServletRequest request) {
		int companyId = Integer.parseInt(request.getParameter("companyId"));
		int housesSum = 0;
		String companyName = request.getParameter("companyName");
		
		//获得该公司的建筑列表
		List<AssetHousing> listAssetHousing = assetHousingService.getAssetHousingByCompany(companyId);
		Map<String, List<AssetHousing>> map = new HashMap<String, List<AssetHousing>>();
		map.put("listAssetHousing", listAssetHousing);
		
		//获得该公司的房间总数
		for(int i=0;i<listAssetHousing.size();i++){
			housesSum += listAssetHousing.get(i).getRoomCount();
		}
		
		//获得该公司的租赁设备总数
		String loanDeviceSum = assetLoanDeviceService.getLoanDeviceSumByCompany(companyId);
		
		return new ModelAndView("/function/company-count", map)
				.addObject("companyName", companyName)
				.addObject("housesSum", housesSum)
				.addObject("loanDeviceSum", loanDeviceSum);
		
		//System.out.println("ID ="+companyId +"Name ="+companyName);
	}
	
	
	public  ModelAndView GetFunitureList(){
		
		List<AssetFurniture> listFuniture = companyassetinformationservice.querylistFuniture();
		return new ModelAndView("/function/company-info-using").addObject("listFuniture",listFuniture);
	}

}
