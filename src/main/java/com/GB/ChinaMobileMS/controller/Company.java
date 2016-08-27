package com.GB.ChinaMobileMS.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.AssetFurniture;
import com.GB.ChinaMobileMS.services.interfaces.AssetFurnitureService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyAssetinformationService;

@Controller
public class Company {

	@Autowired
	CompanyAssetinformationService companyassetinformationservice;
	@Autowired
	AssetFurnitureService assetFurnitureService;
	
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
		else if (id.equals("count"))
			return new ModelAndView("/function/company-count");
		else
			return new ModelAndView("forward:/");
	}
	
	@RequestMapping(value="/updateFurnitureInfo" , method=RequestMethod.POST)
	public ModelAndView updateFurnitureInfo(AssetFurniture assetFurn){
		assetFurnitureService.updateFurnitureInfo(assetFurn);
		return GetFunitureList();
	}
	
	@RequestMapping(value="/deleteFurnitureInfo/{id}" , method=RequestMethod.GET)
	public ModelAndView deleteFurnitureInfo(@PathVariable("id") int id){
		assetFurnitureService.deleteFurnitureInfo(id);
		return GetFunitureList();
	}
	
	public  ModelAndView GetFunitureList(){
		
		List<AssetFurniture> listFuniture = companyassetinformationservice.querylistFuniture();
		return new ModelAndView("/function/company-info-using").addObject("listFuniture",listFuniture);
	}

}
