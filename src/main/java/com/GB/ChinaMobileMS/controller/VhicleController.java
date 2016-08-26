package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.DriverInfoEntity;
import com.GB.ChinaMobileMS.entity.VehicleInfoManageEntity;
import com.GB.ChinaMobileMS.services.interfaces.DriverInfoService;
import com.GB.ChinaMobileMS.services.interfaces.VehicleInfoManageService;

@Controller
public class VhicleController {
	
	@Autowired
	private VehicleInfoManageService vehicleInfoManageService;
	@Autowired
	private DriverInfoService driverInfoService;
	
	/**
	 * @param vehicleInfoManageEntity
	 * @登记车辆信息
	 */
	@RequestMapping(value="/addVehicleInfo", method=RequestMethod.POST)
	public ModelAndView addVehicleInfo(VehicleInfoManageEntity vehicleInfoManageEntity) {

		String insertResult = vehicleInfoManageService.insertVehicleInfoManage(vehicleInfoManageEntity);		
		System.out.println("insertResult = "+insertResult);		
		return new ModelAndView("/function/vehicle-info-add");
	}

	/**
	 * @param driverInfoEntity
	 * @登记驾驶员信息
	 */
	@RequestMapping(value="/addVehiclePerson", method=RequestMethod.POST)
	public ModelAndView addVehiclePerson(DriverInfoEntity driverInfoEntity) {

		String insertResult = driverInfoService.insertVehiclePerson(driverInfoEntity);		
		System.out.println("insertResult = "+insertResult);		
		return new ModelAndView("/function/vehicle-person-add");
	}
	
	/**
	 * @param vehicleInfoManageEntity
	 * @查询车辆信息
	 */
	@RequestMapping(value="/findVehicleInfo", method=RequestMethod.POST)
	public ModelAndView findVehicleInfo(VehicleInfoManageEntity vehicleInfoManageEntity,HttpServletRequest request) {
		
		String condition = request.getParameter("condition"); //获得查询条件
		String queryInformation = request.getParameter("queryInformation");//获得搜索内容
		List<VehicleInfoManageEntity> listVehicleInfoManage;

		//当搜索内容非空时执行
		if(!queryInformation.equals("")){
			if(condition.equals("brand")){
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoByBrand(queryInformation);
				Map<String, List<VehicleInfoManageEntity>> map = new HashMap<String, List<VehicleInfoManageEntity>>();
				map.put("listVehicleInfoManage", listVehicleInfoManage);
				return new ModelAndView("/function/vehicle-info-find", map);
			}
			else if(condition.equals("model")){
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoByModel(queryInformation);
				Map<String, List<VehicleInfoManageEntity>> map = new HashMap<String, List<VehicleInfoManageEntity>>();
				map.put("listVehicleInfoManage", listVehicleInfoManage);
				return new ModelAndView("/function/vehicle-info-find", map);
			}
			else if(condition.equals("vehicleType")){
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoByVehicleType(queryInformation);
				Map<String, List<VehicleInfoManageEntity>> map = new HashMap<String, List<VehicleInfoManageEntity>>();
				map.put("listVehicleInfoManage", listVehicleInfoManage);
				return new ModelAndView("/function/vehicle-info-find", map);
			}
			else if(condition.equals("seat")){
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoBySeat(queryInformation);
				Map<String, List<VehicleInfoManageEntity>> map = new HashMap<String, List<VehicleInfoManageEntity>>();
				map.put("listVehicleInfoManage", listVehicleInfoManage);
				return new ModelAndView("/function/vehicle-info-find", map);
			}
			else if(condition.equals("usedUnit")){
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoByUsedUnit(queryInformation);
				Map<String, List<VehicleInfoManageEntity>> map = new HashMap<String, List<VehicleInfoManageEntity>>();
				map.put("listVehicleInfoManage", listVehicleInfoManage);
				return new ModelAndView("/function/vehicle-info-find", map);
			}
		}
		//当搜索内容为空时，显示全部车辆
		else{
			listVehicleInfoManage = vehicleInfoManageService.listVehicleInfoManage();
			Map<String, List<VehicleInfoManageEntity>> map = new HashMap<String, List<VehicleInfoManageEntity>>();
			map.put("listVehicleInfoManage", listVehicleInfoManage);
			return new ModelAndView("/function/vehicle-info-find", map);
		}
		return new ModelAndView("/function/vehicle-info-find");
	}
	
	/**
	 * @param driverInfoEntity
	 * @查询驾驶员信息
	 */
	@RequestMapping(value="/findVehiclePerson", method=RequestMethod.POST)
	public ModelAndView findVehiclePerson(DriverInfoEntity driverInfoEntity,HttpServletRequest request) {
		
		String condition = request.getParameter("condition"); //获得查询条件
		String queryInformation = request.getParameter("queryInformation");//获得搜索内容
		List<DriverInfoEntity> listDriverInfo;

		//当搜索内容非空时执行
		if(!queryInformation.equals("")){
			if(condition.equals("name")){
				listDriverInfo = driverInfoService.queryDriverInfoByName(queryInformation);
				Map<String, List<DriverInfoEntity>> map = new HashMap<String, List<DriverInfoEntity>>();
				map.put("listDriverInfo", listDriverInfo);
				return new ModelAndView("/function/vehicle-person-find", map);
			}
			else if(condition.equals("sex")){
				if(queryInformation.equals("男")) queryInformation = "1";
				else if(queryInformation.equals("女")) queryInformation = "2";
				else queryInformation = "";
				listDriverInfo = driverInfoService.queryDriverInfoBySex(queryInformation);
				Map<String, List<DriverInfoEntity>> map = new HashMap<String, List<DriverInfoEntity>>();
				map.put("listDriverInfo", listDriverInfo);
				return new ModelAndView("/function/vehicle-person-find", map);
			}
			else if(condition.equals("serviceUnit")){
				listDriverInfo = driverInfoService.queryDriverInfoByServiceUnit(queryInformation);
				Map<String, List<DriverInfoEntity>> map = new HashMap<String, List<DriverInfoEntity>>();
				map.put("listDriverInfo", listDriverInfo);
				return new ModelAndView("/function/vehicle-person-find", map);
			}
		}
		//当搜索内容为空时，显示全部驾驶员
		else{
			listDriverInfo = driverInfoService.listDriverInfo();
			Map<String, List<DriverInfoEntity>> map = new HashMap<String, List<DriverInfoEntity>>();
			map.put("listDriverInfo", listDriverInfo);
			return new ModelAndView("/function/vehicle-person-find", map);
		}
		return new ModelAndView("/function/vehicle-person-find");
	}
}
