package com.GB.ChinaMobileMS.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.GB.ChinaMobileMS.entity.InvestigationItemsEntityModel;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntity;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntityModel;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntitySet;
import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationItemsService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationScoreService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
import com.GB.ChinaMobileMS.services.interfaces.WaitForInvestigationService;




@Controller
public class InvestigationItemsController {
	
	@Autowired
	private InvestigationTableService investigationTableService;
	@Autowired
	private InvestigationItemsService investigationitemsService;
	@Autowired
	private InvestigationScoreService investigationScoreService;
	@Autowired
	private WaitForInvestigationService waitForInvestigationService;
	
	
	
	
	/**
	 * 显示要填写的项目
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/showWiriteInvestigationItems/{id}", method = RequestMethod.GET)
	public ModelAndView showwiriteInvestigationItems(@PathVariable("id") int id, HttpSession session){
		List<InvestigationItemsEntity> investigationItemsEntityList = investigationitemsService.getInvestigationItems(id);
		Map<String, List<InvestigationItemsEntity>> map = new HashMap<String, List<InvestigationItemsEntity>>();
		map.put("investigationItemsEntityList", investigationItemsEntityList);
		return new ModelAndView("/function/service-table-write",map);
	}
	
	/**
	 * 填写分数功能
	 * @param model
	 * @param request
	 * @param httpSession
	 * @return
	 */
	@RequestMapping(value = "/writeInvestigationItemsScore", method = RequestMethod.POST)
	public String  writeInvestigationItemScore(InvestigationScoreEntityModel model,HttpServletRequest request,HttpSession httpSession){
		User sessionUser = (User) httpSession.getAttribute("user");
		String id=request.getParameter("investigationId");
		int investigationId=Integer.parseInt(id);
		//指定ID的考评项目
		List<InvestigationItemsEntity> entityList=investigationitemsService.getInvestigationItems(investigationId);
		for(int i=0;i<model.size();i++){
			entityList.get(i).setGrade(model.getInvestigationScoreEntityList().get(i).getGrade());

		}
		//插入得分数据库
		for(int i=0;i<entityList.size();i++){
			investigationScoreService.insertScore(entityList.get(i).getGrade(), sessionUser.getUserName(), entityList.get(i).getInvestigationItemId());
		}
		//更新等待填写的数据,标志为已经填写
		waitForInvestigationService.updateIsFill(investigationId,sessionUser.getUserName());
		return "redirect:/service/management-write";
	}
	

}
