package com.GB.ChinaMobileMS.controller;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntitySet;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationItemsService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationScoreService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
import com.GB.ChinaMobileMS.services.interfaces.WaitForInvestigationService;

@Controller
public class InvestigationTableController {
	@Autowired
	private InvestigationTableService investigationTableService;
	@Autowired
	private WaitForInvestigationService waitForInvestigationService;
	@Autowired
	private InvestigationItemsService investigationItemsService;
	@Autowired
	private InvestigationScoreService investigationScoreService;
	@RequestMapping(value = "/service/{id}", method = RequestMethod.GET)
	public ModelAndView ServiceUser(User user, @PathVariable("id") String id, HttpSession session) throws Exception {
		User sessionUser = (User)session.getAttribute("user");
		List<InvestigationTableEntity> investigationTableEntityList; 
		if (id.equals("management-check")){
			/**
			 * 物业服务考评表格
			 */
			investigationTableEntityList = investigationTableService.getInvestigationTableEntityByUserName(sessionUser.getUserName());
			Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
			map.put("investigationTableEntityList",investigationTableEntityList);
			return new ModelAndView("/function/service-management-check",map);
		}
		else if(id.equals("management-write")){
			investigationTableEntityList = new ArrayList<InvestigationTableEntity>();
			ModelAndView model = new ModelAndView();
			String nowTime =formatTime();//获取当前时间
			List<InvestigationTableEntitySet> investigationTableEntitySetList= new ArrayList<InvestigationTableEntitySet>();
			List<WaitForInvestigationUserEntity> waitForInvestigationUserEntityList=waitForInvestigationService.findWaitByUserName(sessionUser.getUserName());
			for(int i=0;i<waitForInvestigationUserEntityList.size();i++){
				investigationTableEntityList.add(investigationTableService.getInvestigationTableEntityByid(waitForInvestigationUserEntityList.get(i).getInvestigationId()));
				//通过id获取到每一行的数据;
			}
			for(int i=0;i<investigationTableEntityList.size();i++){
				InvestigationTableEntitySet investigationTableEntitySet =  new InvestigationTableEntitySet();
				investigationTableEntitySet.setInvestigationTableName(investigationTableEntityList.get(i).getInvestigationName());
				String recoverTime=investigationTableEntityList.get(i).getRecoveryTime();
				if(compareDate(nowTime, recoverTime)||investigationTableEntityList.get(i).getStatus()==2)
					investigationTableEntitySet.setStatus(1);
				else
					investigationTableEntitySet.setStatus(0);
				investigationTableEntitySet.setInvestigationTableName(investigationTableEntityList.get(i).getInvestigationName());
				investigationTableEntitySet.setCreateStaff(investigationTableEntityList.get(i).getCreateStaff());
				investigationTableEntitySet.setRecoveryTime(investigationTableEntityList.get(i).getRecoveryTime());
				investigationTableEntitySet.setIsFill(waitForInvestigationUserEntityList.get(i).getIsfill());
				investigationTableEntitySet.setInvestigationId(investigationTableEntityList.get(i).getInvestigationId());
				investigationTableEntitySetList.add(investigationTableEntitySet);
			}
			model.addObject("investigationTableEntitySetList",investigationTableEntitySetList);
			model.setViewName("/function/service-management-write");
			return model;
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
	//删除调查表
	@RequestMapping(value = "/deleteTable/{id}", method = RequestMethod.GET)
	public String deleteTable(@PathVariable("id") int id,HttpSession session){
		int investigationId = id;
		List<InvestigationItemsEntity> investigationItemsEntityList = investigationItemsService.getInvestigationItems(investigationId);
		for(int i=0;i<investigationItemsEntityList.size();i++){
			investigationScoreService.deleteScoreByInvestigationItemId(investigationItemsEntityList.get(i).getInvestigationItemId());
		}
		investigationItemsService.deleteInvestigationItemsByInvestigationId(investigationId);
		waitForInvestigationService.deleteWaitForInvestigationUserByInvestigationId(investigationId);
		investigationTableService.deleteInvestiationTableById(investigationId);
		return "redirect:/service/management-check";
	}
	private String formatTime(){
		Date dt=new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
//		Timestamp now = new Timestamp(System.currentTimeMillis());
		String nowTime = df.format(dt);
		return nowTime; 
	}
	private boolean compareDate(String date1, String date2) throws Exception{
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date dateTime1 = dateFormat.parse(date1);
		Date dateTime2 = dateFormat.parse(date2);
		int result = dateTime1.compareTo(dateTime2);
		if(result>=0)
			return true;
		else 
			return false;
	}
}
