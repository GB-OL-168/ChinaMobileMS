package com.GB.ChinaMobileMS.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.JobEntity;
import com.GB.ChinaMobileMS.services.impl.SendServiceManagementImpl;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.JobService;
import com.GB.ChinaMobileMS.services.interfaces.ServiceManagementSend;


@Controller
public class ServiceManagementSendController {
	
	@Autowired
	private ServiceManagementSend serviceManagementSend;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private BranchService branchService;
	@Autowired
	private JobService JobService;
	
	@RequestMapping(value="/sendServiceManagement", method=RequestMethod.POST)
	public ModelAndView sendServiceManagement(InvestigationTableEntity investigationTableEntity){
		
		
		String investigationName;
		int status;
		investigationTableEntity = serviceManagementSend.getInvestigationName(2);//上一页点击发送时取得ID
		investigationName = investigationTableEntity.getInvestigationName();
		status = investigationTableEntity.getStatus();
		
		List<CompanyEntity> listCompany = companyService.queryCompany();
		List<BranchEntity> listBranch = branchService.queryBranch();
		List<JobEntity> listJob = JobService.queryJob();
		
		
//		return new ModelAndView("/function/service-management-send").addObject("investigationName",investigationName).addObject("status",status);
		
		/*int investigationId = sendService.getInvestigationId();
		System.out.println("ID = " + investigationId);*/
			
		//发放状态改变
		int newStatus=1;
		investigationTableEntity.setStatus(newStatus);
				 
		String string = serviceManagementSend.sendServiceManagement(investigationTableEntity);
		
		return null;  //可以返回上一页
	}
}