package com.GB.ChinaMobileMS.controller;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.activiti_util.ActivitiUtil;
import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.JobEntity;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.JobService;
import com.GB.ChinaMobileMS.services.interfaces.PropertyApplicantService;

@Controller
public class PropertyApplicantController {	
	
	@Autowired
	private PropertyApplicantService propertyApplicantService;
	//在Spring中生成set get方法 自动获取userService对象
	@Autowired
	private CompanyService companyService;
	@Autowired
	private BranchService branchService;
	@Autowired
	private JobService jobService;
	@Autowired
	private ActivitiUtil activitiUtil;

//	@RequestMapping(value="/addPropertyApplicant", method=RequestMethod.POST)
//	public ModelAndView addPropertyApplicant(PropertyServiceEntity propertyApplicant, HttpSession httpSession){
//		User sessionUser = (User)httpSession.getAttribute("user");
//		if(sessionUser.getUserName()!=null)
//	
//		System.out.println("sessionUser = "+sessionUser.getUserName()+"/n");
//		
//		JobEntity job = jobService.getJobByJobID(sessionUser.getJobId());
//		BranchEntity branchEntity = branchService.getBranchManager(job.getBranchId());
//		CompanyEntity companyEntity = companyService.getCompanyManager(branchEntity.getCompanyId());
//		
//        String applyUserName = sessionUser.getUserName();
//        propertyApplicant.setApplyUserName(applyUserName);
//        propertyApplicant.setBranchId(branchEntity.getBranchId());
//        propertyApplicant.setCompanyId(companyEntity.getCompanyId());
//		
//		propertyApplicant.setApplyTime(formatTime());
//
//		//提取申请表id
//		int propertyID = propertyApplicantService.addPropertyApplicant(propertyApplicant);
//		//开启申请
//		startAcititi(propertyID, branchEntity.getBranchManager(), companyEntity.getCompanyManager());
//		
//		List<PropertyServiceEntity> listPropertyApplicant = propertyApplicantService.getPropertyApplicantByApplyUserName(sessionUser.getUserName());
//		Map map =new HashMap();
//		map.put("listPropertyApplicant",listPropertyApplicant);
//		return new ModelAndView("/function/property-server",map);
//	}
	
	@RequestMapping(value="/addPropertyApplicant", method=RequestMethod.POST)
	public String addPropertyApplicant(PropertyServiceEntity propertyApplicant, HttpSession httpSession){
		User sessionUser = (User)httpSession.getAttribute("user");
		//电话号码匹配校验
		if(!propertyApplicantService.validateContactInfo(propertyApplicant.getContactInfo())){
			return "wrongContactInfo";
		}
		
		JobEntity job = jobService.getJobByJobID(sessionUser.getJobId());
		BranchEntity branchEntity = branchService.getBranchManager(job.getBranchId());
		CompanyEntity companyEntity = companyService.getCompanyManager(branchEntity.getCompanyId());
		
        String applyUserName = sessionUser.getUserName();
        propertyApplicant.setApplyUserName(applyUserName);
        propertyApplicant.setBranchId(branchEntity.getBranchId());
        propertyApplicant.setCompanyId(companyEntity.getCompanyId());
		
		propertyApplicant.setApplyTime(formatTime());

		//提取申请表id
		int propertyID = propertyApplicantService.addPropertyApplicant(propertyApplicant);
		//开启申请
		startAcititi(propertyID, branchEntity.getBranchManager(), companyEntity.getCompanyManager());
		
		return "redirect:/property/server";
	}
	
	/**
	 * 开启一条流程
	 * @param propertyTableId		申请表ID
	 * @param branchVertifyUser		一审人
	 * @param companyVertifyUser	二审人
	 * @return	true：开启成功	false：开启失败
	 */
	private boolean startAcititi(int propertyTableId, String branchVertifyUser, String companyVertifyUser){
		return activitiUtil.startProcess(propertyTableId, branchVertifyUser, companyVertifyUser);
	}
	
	/**
	 * 时间格式化
	 * @return	格式化完成的时间（年月日时分秒）
	 */
	private Timestamp formatTime(){
		Date dt = new Date();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String nowTime = df.format(dt);
		return Timestamp.valueOf(nowTime); 
	}
}
