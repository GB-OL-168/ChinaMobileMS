package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.activiti.engine.impl.util.json.JSONArray;
import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.InvestigationItemsEntityModel;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntityModel;
import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationItemsService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationScoreService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;

import ch.qos.logback.classic.Logger;

@Controller
public class InvestigationItemsController {
	/**
	 * @lanyangjia
	 * 考评项目控制器
	 */
	@Autowired
	private InvestigationTableService investigationTableService;
	@Autowired
	private InvestigationItemsService investigationitemsService;
	@Autowired
	private InvestigationScoreService investigationScoreService;
	@RequestMapping(value = "/showInvestigationItem/{id}", method = RequestMethod.GET)
	public ModelAndView showInvestigationItem(@PathVariable("id") int id, HttpSession session) {
		List<InvestigationItemsEntity> investigationItemsEntityList = investigationitemsService.getInvestigationItems(id);
		Map<String, List<InvestigationItemsEntity>> map = new HashMap<String, List<InvestigationItemsEntity>>();
		map.put("investigationItemsEntityList", investigationItemsEntityList);
		return new ModelAndView("/function/service-table-info", map);
	}
	
	@RequestMapping(value = "/investigationItem", method = RequestMethod.POST)
	public ModelAndView createInvestigationTable(InvestigationItemsEntityModel model, HttpSession httpSession,
			HttpServletRequest request) {
		User sessionUser = (User) httpSession.getAttribute("user");
		String investigationName = request.getParameter("investigationItmeName");
		InvestigationTableEntity investigationtableEntity = new InvestigationTableEntity();
		investigationtableEntity.setInvestigationName(investigationName);
		System.out.println(sessionUser.getUserName());
		investigationtableEntity.setCreateStaff(sessionUser.getUserName());
		investigationTableService.insertMessage(investigationtableEntity);
		for (int i = 0; i < model.size(); i++) {
			if (!model.getInvestigationItemsEntityList().get(i).getInvestigationItemValue().isEmpty() && model.getInvestigationItemsEntityList().get(i).getInvestigationItemValue() != null 
					&& model.getInvestigationItemsEntityList().get(i).getInvestigationStanddard() != null
					&&!model.getInvestigationItemsEntityList().get(i).getInvestigationStanddard().isEmpty()) {
				model.getInvestigationItemsEntityList().get(i).setInvestigationItmeName(investigationName);
				model.getInvestigationItemsEntityList().get(i).setInvestigationId(investigationtableEntity.getInvestigationId());
			} else {
				model.remove(model.getInvestigationItemsEntityList().get(i));
			}
		}
		investigationitemsService.inserItems(model.getInvestigationItemsEntityList());
		List<InvestigationTableEntity> investigationTableEntityList = investigationTableService
				.getInvestigationTableEntityByUserName(sessionUser.getUserName());
		Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
		map.put("investigationTableEntityList", investigationTableEntityList);
		return new ModelAndView("/function/service-management-check", map);
	}
	
	@RequestMapping(value = "/showWiriteInvestigationItems/{id}", method = RequestMethod.GET)
	public ModelAndView showwiriteInvestigationItems(@PathVariable("id") int id, HttpSession session){
		List<InvestigationItemsEntity> investigationItemsEntityList = investigationitemsService.getInvestigationItems(id);
		Map<String, List<InvestigationItemsEntity>> map = new HashMap<String, List<InvestigationItemsEntity>>();
		map.put("investigationItemsEntityList", investigationItemsEntityList);
		return new ModelAndView("/function/service-table-write",map);
	}
	//填写分数
	@RequestMapping(value = "/writeInvestigationItemsScore", method = RequestMethod.POST)
	public ModelAndView  writeInvestigationItemScore(InvestigationScoreEntityModel model,HttpServletRequest request,HttpSession httpSession){
		User sessionUser = (User) httpSession.getAttribute("user");
		String id=request.getParameter("investigationId");
		int investigationId=Integer.parseInt(id);
		List<InvestigationItemsEntity> entityList=investigationitemsService.getInvestigationItems(investigationId);//指定ID的考评项目
		for(int i=0;i<model.size();i++){
			System.out.println(model.getInvestigationScoreEntityList().get(i).getGrade());
			entityList.get(i).setGrade(model.getInvestigationScoreEntityList().get(i).getGrade());

		}
		//更新数据库
		for(int i=0;i<entityList.size();i++){
			investigationScoreService.insertScore(entityList.get(i).getGrade(), sessionUser.getUserName(), entityList.get(i).getInvestigationItemId());
		}
		//investigationTableService.uptdateIsFill(investigationId);
		List<InvestigationTableEntity> investigationTableEntityList = investigationTableService
				.getInvestigationTableEntityByUserName(sessionUser.getUserName());
		Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
		map.put("investigationTableEntityList", investigationTableEntityList);
		return new ModelAndView("/function/service-management-check", map);
	}
	

}
