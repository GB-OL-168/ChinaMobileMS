package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.DriverInfoEntity;
import com.GB.ChinaMobileMS.entity.VehicleInfoManageEntity;
import com.GB.ChinaMobileMS.services.interfaces.DriverInfoService;
import com.GB.ChinaMobileMS.services.interfaces.VehicleInfoManageService;

@Controller
public class Vehicle {
	@Autowired
	private VehicleInfoManageService vehicleInfoManageService;
	@Autowired
	private DriverInfoService driverInfoService;
	
	@RequestMapping(value="/vehicle/{id}", method=RequestMethod.GET)
	public ModelAndView login(@PathVariable("id") String id,HttpSession session){
		if(id.equals("info-add"))
			return new ModelAndView("/function/vehicle-info-add");
		else if(id.equals("info-find")){
			List<VehicleInfoManageEntity> listVehicleInfoManage = null;
			Map<String, List<VehicleInfoManageEntity>> map = new HashMap<String, List<VehicleInfoManageEntity>>();
			try{
				listVehicleInfoManage = vehicleInfoManageService.listVehicleInfoManage();
			}
			catch(Exception e){
				System.out.println("查询车辆信息列表失败");	
			}
			map.put("listVehicleInfoManage", listVehicleInfoManage);
			return new ModelAndView("/function/vehicle-info-find",map);
		}
		else if(id.equals("person-add"))
			return new ModelAndView("/function/vehicle-person-add");
		else if(id.equals("person-find")){
			List<DriverInfoEntity> listDriverInfo = null;
			Map<String, List<DriverInfoEntity>> map = new HashMap<String, List<DriverInfoEntity>>();
			try{
				listDriverInfo = driverInfoService.listDriverInfo();
			}
			catch(Exception e){
				System.out.println("查询驾驶员信息列表失败");	
			}
			map.put("listDriverInfo", listDriverInfo);
			return new ModelAndView("/function/vehicle-person-find", map);
		}
		else
			return new ModelAndView("forward:/");
	}
}
