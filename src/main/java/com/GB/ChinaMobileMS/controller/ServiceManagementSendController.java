package com.GB.ChinaMobileMS.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
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

import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
import com.GB.ChinaMobileMS.services.interfaces.ServiceManagementSendService;

@Controller
public class ServiceManagementSendController {

	@Autowired
	private ServiceManagementSendService serviceManagementSendService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private BranchService branchService;
	@Autowired
	private InvestigationTableService investigationTableService;
	
	/**
	 * 点击发放，设置考评表发放情况
	 */
	@RequestMapping(value = "/sendServiceManagement1/{id}", method = RequestMethod.GET)
	public ModelAndView sendServiceManagement(@PathVariable("id") int id, HttpSession session) {

		// 读取要发送的考评表名和状态
		String investigationName;
		int status, investigationId;
		InvestigationTableEntity investigationTableEntity = serviceManagementSendService.getInvestigationTableByID(id);
		investigationName = investigationTableEntity.getInvestigationName();
		status = investigationTableEntity.getStatus(); //获得当前状态,0未发放  1已发放  2已回收
		investigationId = investigationTableEntity.getInvestigationId();
		//未发放时才可发送
		if(status==0){
			List<CompanyEntity> listCompany = companyService.queryCompany();
			List<BranchEntity> listBranch = branchService.queryBranch();
	
			return new ModelAndView("/function/service-management-send").addObject("investigationId", investigationId)
					.addObject("investigationName", investigationName).addObject("status", status)
					.addObject("listCompany", listCompany).addObject("listBranch", listBranch);
		}
		
		User sessionUser = (User)session.getAttribute("user");
		List<InvestigationTableEntity> investigationTableEntityList =investigationTableService.getInvestigationTableEntityByUserName(sessionUser.getUserName());
		if(!investigationTableEntityList.isEmpty()&&investigationTableEntityList!=null){
			Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
			map.put("investigationTableEntityList",investigationTableEntityList);
			return new ModelAndView("/function/service-management-check",map);
		}
		return new ModelAndView("/function/service-management-check");
	}

	/**
	 * @Cindy
	 * 发送考评表
	 */
	@RequestMapping(value = "/sendServiceManagement2/{id}", method = RequestMethod.POST)
	public ModelAndView sendServiceManagement2(@PathVariable("id") int id,
			InvestigationTableEntity investigationTableEntity, HttpSession session) {
		
		int newStatus = 1,flag = 0; //flag=0可填
		investigationTableEntity.setStatus(newStatus);  // 考评表状态改变
		investigationTableEntity.setInvestigationId(id);
		investigationTableEntity.setFlag(flag);

		//更新状态、设置回收时间
		String updateResult = serviceManagementSendService.updateServiceManagementSend(investigationTableEntity);
		System.out.println("branchId" +investigationTableEntity.getBranchId());
		//插入WaitForInvestigatUser表
		int insertResult = serviceManagementSendService.insertServiceManagementSend(investigationTableEntity.getBranchId(),investigationTableEntity.getInvestigationId(),investigationTableEntity.getFlag());
		
		User sessionUser = (User)session.getAttribute("user");
		List<InvestigationTableEntity> investigationTableEntityList =investigationTableService.getInvestigationTableEntityByUserName(sessionUser.getUserName());
		if(!investigationTableEntityList.isEmpty()&&investigationTableEntityList!=null){
			Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
			map.put("investigationTableEntityList",investigationTableEntityList);
			return new ModelAndView("/function/service-management-check",map);
		}
		return new ModelAndView("/function/service-management-check");
	}
	
	/**
	 * @Cindy
	 * 回收考评表
	 */
	@RequestMapping(value = "/recycleServiceManagement/{id}", method = RequestMethod.GET)
	public ModelAndView recycleServiceManagement(@PathVariable("id") int id, HttpSession session) {
		
		InvestigationTableEntity investigationTableEntity = serviceManagementSendService.getInvestigationTableByID(id);
		if(investigationTableEntity.getStatus()==1){
			
			int newStatus = 2,flag = 1; //flag=1不可填
			investigationTableEntity.setStatus(newStatus);  // 考评表状态改变
			investigationTableEntity.setRecoveryTime(formatTime());	
			investigationTableEntity.setFlag(flag);
			
			int investigationId = investigationTableEntity.getInvestigationId();
			//更新状态和回收时间
			
			String updateResult = serviceManagementSendService.updateServiceManagementSend(investigationTableEntity);
		}
		
		User sessionUser = (User)session.getAttribute("user");
		List<InvestigationTableEntity> investigationTableEntityList =investigationTableService.getInvestigationTableEntityByUserName(sessionUser.getUserName());
		if(!investigationTableEntityList.isEmpty()&&investigationTableEntityList!=null){
			Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
			map.put("investigationTableEntityList",investigationTableEntityList);
			return new ModelAndView("/function/service-management-check",map);
		}
		return new ModelAndView("/function/service-management-check");
	}
	
	//回收时 当前时间
	private String formatTime(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp now = new Timestamp(System.currentTimeMillis());
		String nowTime = df.format(now);
		return nowTime; 
	}
}