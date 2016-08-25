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

import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
import com.GB.ChinaMobileMS.services.interfaces.WaitForInvestigationService;

@Controller
public class InvestigationTableController {
	@Autowired
	private InvestigationTableService investigationTableService;
	@Autowired
	private WaitForInvestigationService waitForInvestigationService;
	
	@RequestMapping(value = "/service/{id}", method = RequestMethod.GET)
	public ModelAndView ServiceUser(User user, @PathVariable("id") String id, HttpSession session) {
		if (id.equals("management-check")){
			/**
			 * 物业服务考评表格
			 */
			User sessionUser = (User)session.getAttribute("user");
			List<InvestigationTableEntity> investigationTableEntityList =investigationTableService.getInvestigationTableEntityByUserName(sessionUser.getUserName());
			if(!investigationTableEntityList.isEmpty()&&investigationTableEntityList!=null){
			Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
			map.put("investigationTableEntityList",investigationTableEntityList);
			return new ModelAndView("/function/service-management-check",map);
			}
			else{
			List<WaitForInvestigationUserEntity> waitForInvestigationUserEntityList=waitForInvestigationService.findWaitByUserName(sessionUser.getUserName());
			for(int i=0;i<waitForInvestigationUserEntityList.size();i++){
				investigationTableEntityList.add(investigationTableService.getInvestigationTableEntityByid(waitForInvestigationUserEntityList.get(i).getInvestigationId()));
			}
			Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
			map.put("investigationTableEntityList",investigationTableEntityList);
			return new ModelAndView("/function/service-management-check",map);
			}
			
		}
		else if(id.equals("management-write")){
			return new ModelAndView("/function/service-management-write");
		}
		else if (id.equals("management-table-make"))
			return new ModelAndView("/function/service-management-table-make");
		else if (id.equals("table-info"))
			return new ModelAndView("/function/service-table-info");
		else if (id.equals("date-statistics"))
			return new ModelAndView("/function/service-date-statistics");
		else if (id.equals("table-write"))
			return new ModelAndView("/function/service-table-write");
		else
			return new ModelAndView("forward:/");
	}
}
