package com.GB.ChinaMobileMS.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.activiti.engine.impl.util.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.InvestigationItemsEntityModel;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntity;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntityModel;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntitySet;
import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationItemsService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationScoreService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;




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
		String investigationName=investigationItemsEntityList.get(0).getInvestigationItemName();
		ModelAndView model = new ModelAndView();
		model.addObject("investigationName",investigationName);
		model.addObject("investigationItemsEntityList",investigationItemsEntityList);
		model.setViewName("/function/service-table-info");
//		Map<String, List<InvestigationItemsEntity>> map = new HashMap<String, List<InvestigationItemsEntity>>();
//		map.put("investigationItemsEntityList", investigationItemsEntityList);
		return model;
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
			if ((!model.getInvestigationItemsEntityList().get(i).getInvestigationItemValue().isEmpty() && model.getInvestigationItemsEntityList().get(i).getInvestigationItemValue() != null) 
					&& (model.getInvestigationItemsEntityList().get(i).getInvestigationStanddard() != null
					&&!model.getInvestigationItemsEntityList().get(i).getInvestigationStanddard().isEmpty())) {
				model.getInvestigationItemsEntityList().get(i).setInvestigationItemName(investigationName);
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
		List<InvestigationTableEntity> investigationTableEntityList = investigationTableService
				.getInvestigationTableEntityByUserName(sessionUser.getUserName());
		Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
		map.put("investigationTableEntityList", investigationTableEntityList);
		return new ModelAndView("/function/service-management-check", map);
	}
	
	@RequestMapping(value="/statistics/{id}",method = RequestMethod.GET)
	public ModelAndView statistics(@PathVariable("id") int id,HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		int excellent = 0,good = 0,bad = 0;
		InvestigationScoreEntitySet investigationScoreEntitySet;
		List<InvestigationScoreEntitySet> investigationScoreEntitySetList = new ArrayList<InvestigationScoreEntitySet>();
		List<InvestigationItemsEntity> investigationItemsEntityList= investigationitemsService.getInvestigationItems(id);
		String investigationItemsName=investigationItemsEntityList.get(0).getInvestigationItemName()+"分析";
		for(int i=0;i<investigationItemsEntityList.size();i++){
			List<InvestigationScoreEntity> investigationScoreEntityList=investigationScoreService.findByInvestigationItemId(investigationItemsEntityList.get(i).getInvestigationItemId());
			investigationScoreEntitySet=new InvestigationScoreEntitySet();
			investigationScoreEntitySet.setInvestigationItemValue(investigationItemsEntityList.get(i).getInvestigationItemValue());
			investigationScoreEntitySet.setInvestigationStanddard(investigationItemsEntityList.get(i).getInvestigationStanddard());
			if(investigationScoreEntityList==null||investigationScoreEntityList.isEmpty()){
				System.out.println("LALALALALAL"+investigationScoreEntityList.size());
			}
			else{
				investigationScoreEntitySet.setScoreId(investigationScoreEntityList.get(i).getScoreId());
				investigationScoreEntitySet.setInvestigationItemId(investigationScoreEntityList.get(i).getInvestigationItemId());
				investigationScoreEntitySet.setInvestigationUserName(investigationScoreEntityList.get(i).getInvestigationUserName());
				investigationScoreEntitySet.setGrade(investigationScoreEntityList.get(i).getGrade());
				for(int j=0;j<investigationScoreEntityList.size();j++){
					if(investigationScoreEntityList.get(j).getGrade().equals("excellent"))
						++excellent;
					else if(investigationScoreEntityList.get(j).getGrade().equals("good"))
						++good;
					else  
						++bad;
				}
			}
			investigationScoreEntitySet.setExcellent(excellent);
			investigationScoreEntitySet.setGood(good);
			investigationScoreEntitySet.setBad(bad);
			investigationScoreEntitySetList.add(investigationScoreEntitySet);//加进去实体
			excellent=0;good=0;bad=0;//reset
			investigationScoreEntityList.clear();
		}
		for(int i=0;i<investigationScoreEntitySetList.size();i++){
			int total=investigationScoreEntitySetList.get(i).getExcellent()+investigationScoreEntitySetList.get(i).getGood()+investigationScoreEntitySetList.get(i).getBad();
			if(total==0){
				investigationScoreEntitySetList.get(i).setExcellentPercentage(0);
				investigationScoreEntitySetList.get(i).setGoodPercentage(0);
				investigationScoreEntitySetList.get(i).setBadPercentage(0);
			}
			else{
				
				double excellentTemp=(investigationScoreEntitySetList.get(i).getExcellent()*1.0/total)*100;
				double goodTemp=(investigationScoreEntitySetList.get(i).getGood()*1.0/total)*100;
				double badTemp=(investigationScoreEntitySetList.get(i).getBad()*1.0/total)*100;
				BigDecimal a=new BigDecimal(excellentTemp);
				BigDecimal b=new BigDecimal(goodTemp);
				BigDecimal c=new BigDecimal(badTemp);
				investigationScoreEntitySetList.get(i).setExcellentPercentage(a.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
				investigationScoreEntitySetList.get(i).setGoodPercentage(b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
				investigationScoreEntitySetList.get(i).setBadPercentage(c.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
			}
			
		}
		model.addObject("investigationItemsName",investigationItemsName);
		model.addObject("investigationScoreEntitySetList", investigationScoreEntitySetList);
		model.setViewName("function/service-date-statistics");
		return model;
	}

}
