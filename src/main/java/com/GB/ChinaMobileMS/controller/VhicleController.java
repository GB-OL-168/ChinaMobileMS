package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
		try{
			vehicleInfoManageService.insertVehicleInfoManage(vehicleInfoManageEntity);		
		}
		catch(Exception e){
			System.out.println("登记车辆信息失败");	
			return new ModelAndView("/function/vehicle-info-add").addObject("infomation", "登记车辆信息失败！");
		}
		return new ModelAndView("/function/vehicle-info-add").addObject("infomation", "登记车辆信息成功！");
	}

	/**
	 * @param driverInfoEntity
	 * @登记驾驶员信息
	 */
	@RequestMapping(value="/addVehiclePerson", method=RequestMethod.POST)
	public ModelAndView addVehiclePerson(DriverInfoEntity driverInfoEntity) {
		try{
			driverInfoService.insertVehiclePerson(driverInfoEntity);		
		}
		catch(Exception e){
			System.out.println("登记驾驶员信息失败");	
			return new ModelAndView("/function/vehicle-person-add").addObject("infomation", "登记驾驶员信息失败！");
		}	
		return new ModelAndView("/function/vehicle-person-add").addObject("infomation", "登记驾驶员信息成功！");
	}
	
	/**
	 * @param vehicleInfoManageEntity
	 * @查询车辆信息
	 */
	@RequestMapping(value="/findVehicleInfo", method=RequestMethod.POST)
	public ModelAndView findVehicleInfo(VehicleInfoManageEntity vehicleInfoManageEntity,HttpServletRequest request) {
		
		String condition = request.getParameter("condition"); //获得查询条件
		String queryInformation = request.getParameter("queryInformation");//获得搜索内容
		List<VehicleInfoManageEntity> listVehicleInfoManage = null;
		Map<String, List<VehicleInfoManageEntity>> map = new HashMap<String, List<VehicleInfoManageEntity>>();

		//判断查询条件
		if(condition.equals("brand")){
			try{
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoByBrand(queryInformation);
			}
			catch(Exception e){
				System.out.println("通过品牌查询车辆信息列表失败");	
			}
		}
		else if(condition.equals("model")){
			try{
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoByModel(queryInformation);
			}
			catch(Exception e){
				System.out.println("通过型号查询车辆信息列表失败");	
			}
		}
		else if(condition.equals("vehicleType")){
			try{
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoByVehicleType(queryInformation);
			}
			catch(Exception e){
				System.out.println("通过车辆类型查询车辆信息列表失败");	
			}
		}
		else if(condition.equals("seat")){
			try{
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoBySeat(queryInformation);
			}
			catch(Exception e){
				System.out.println("通过车座查询车辆信息列表失败");	
			}
		}
		else if(condition.equals("usedUnit")){
			try{
				listVehicleInfoManage = vehicleInfoManageService.queryVehicleInfoByUsedUnit(queryInformation);
			}
			catch(Exception e){
				System.out.println("通过使用单位查询车辆信息列表失败");	
			}
		}
		map.put("listVehicleInfoManage", listVehicleInfoManage);
		return new ModelAndView("/function/vehicle-info-find", map);
	}
	/**
	 * @param vehicleInfoManageEntity
	 * @车辆查询-删除
	 */
	@RequestMapping(value="/deleteVehicleInfo", method=RequestMethod.POST)
	public @ResponseBody boolean deleteVehicleInfo(int vehicleInfoId) {
		boolean flag = false;
		try{
			flag = vehicleInfoManageService.deleteVehicleInfoManage(vehicleInfoId);
		}
		catch(Exception e){
			System.out.println("删除车辆信息失败");
		}
		return flag;
	}	
	/**
	 * @param vehicleInfoManageEntity
	 * @车辆查询-修改
	 */
	@Transactional
	@RequestMapping(value="/updateVehicleInfo", method=RequestMethod.POST)
	public ModelAndView updateVehicleInfo(VehicleInfoManageEntity vehicleInfoManageEntity) {
		List<VehicleInfoManageEntity> listVehicleInfoManage = null;
		Map<String, List<VehicleInfoManageEntity>> map = new HashMap<String, List<VehicleInfoManageEntity>>();
		try{
			vehicleInfoManageService.updateVehicleInfo(vehicleInfoManageEntity);
		}
		catch(Exception e){
			System.out.println("修改车辆信息失败");	
			return new ModelAndView("/function/vehicle-info-find").addObject("infomation", "修改该车辆信息失败！");
		}
		try{
			listVehicleInfoManage = vehicleInfoManageService.listVehicleInfoManage();
		}
		catch(Exception e){
			System.out.println("查询车辆信息列表失败");	
		}
		map.put("listVehicleInfoManage", listVehicleInfoManage);
		return new ModelAndView("/function/vehicle-info-find", map).addObject("infomation", "修改该车辆信息成功！");
	}
	/**
	 * @param driverInfoEntity
	 * @查询驾驶员信息
	 */
	@RequestMapping(value="/findVehiclePerson", method=RequestMethod.POST)
	public ModelAndView findVehiclePerson(DriverInfoEntity driverInfoEntity,HttpServletRequest request) {
		
		String condition = request.getParameter("condition"); //获得查询条件
		String queryInformation = request.getParameter("queryInformation");//获得搜索内容
		List<DriverInfoEntity> listDriverInfo = null;
		Map<String, List<DriverInfoEntity>> map = new HashMap<String, List<DriverInfoEntity>>();

		//判断查询条件
		if(condition.equals("name")){
			try{
				listDriverInfo = driverInfoService.queryDriverInfoByName(queryInformation);
			}
			catch(Exception e){
				System.out.println("通过姓名查询驾驶员信息列表失败");	
			}
		}
		else if(condition.equals("sex")){
			if(queryInformation.equals("男")) queryInformation = "1";
			else if(queryInformation.equals("女")) queryInformation = "2";
			else queryInformation = "";
			try{
				listDriverInfo = driverInfoService.queryDriverInfoBySex(queryInformation);
			}
			catch(Exception e){
				System.out.println("通过性别查询驾驶员信息列表失败");	
			}
		}
		else if(condition.equals("serviceUnit")){
			try{
				listDriverInfo = driverInfoService.queryDriverInfoByServiceUnit(queryInformation);
			}
			catch(Exception e){
				System.out.println("通过服务单位查询驾驶员信息列表失败");	
			}
		}
		map.put("listDriverInfo", listDriverInfo);
		return new ModelAndView("/function/vehicle-person-find", map);
	}
	/**
	 * @param driverInfoEntity
	 * @驾驶员查询-删除
	 */
	@RequestMapping(value="/deleteVehiclePerson", method=RequestMethod.POST)
	public @ResponseBody boolean deleteVehiclePerson(int driverId) {
		boolean flag = false;
		try{
			flag = driverInfoService.deleteVehiclePerson(driverId);
		}
		catch(Exception e){
			System.out.println("删除驾驶员信息失败");	
		}
		return flag;
	}
	/**
	 * @param driverInfoEntity
	 * @驾驶员查询-修改
	 */
	@Transactional
	@RequestMapping(value="/updateVehiclePerson", method=RequestMethod.POST)
	public ModelAndView updateVehiclePerson(DriverInfoEntity driverInfoEntity) {
		List<DriverInfoEntity> listDriverInfo = null;
		Map<String, List<DriverInfoEntity>> map = new HashMap<String, List<DriverInfoEntity>>();
		try{
			driverInfoService.updateVehiclePerson(driverInfoEntity);
		}
		catch(Exception e){
			System.out.println("修改驾驶员信息失败");	
			return new ModelAndView("/function/vehicle-person-find").addObject("infomation", "修改该驾驶员信息失败！");
		}
		try{
			listDriverInfo = driverInfoService.listDriverInfo();
		}
		catch(Exception e){
			System.out.println("查询驾驶员信息列表失败");	
		}
		map.put("listDriverInfo", listDriverInfo);
		return new ModelAndView("/function/vehicle-person-find", map).addObject("infomation", "修改该驾驶员信息成功！");
	}
}