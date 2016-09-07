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

import com.GB.ChinaMobileMS.activiti_util.ActivitiUtil;
import com.GB.ChinaMobileMS.entity.AuditingDinnerPropertyEntity;
import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.DinnerPropertyTableEntity;
import com.GB.ChinaMobileMS.entity.DinnerReviewEntity;
import com.GB.ChinaMobileMS.entity.JobEntity;
import com.GB.ChinaMobileMS.entity.ManagementDinnerPropertyEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.DinnerPropertyTableService;
import com.GB.ChinaMobileMS.services.interfaces.DinnerReviewService;
import com.GB.ChinaMobileMS.services.interfaces.JobService;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Controller
public class DinnerServiceController {
	
	public static final int NOT_START = 0;			//为开始状态
	public static final int REJECT_HANDLE = 1;		//拒绝受理状态
	public static final int FIRST_STAGE_START = 2;	//一审开始阶段状态
	public static final int FIRST_REJECT = 4;		//一审拒绝阶段状态
	public static final int SECOND_STAGE_START = 5;	//二审开始阶段状态
	public static final int SECOND_PASS = 6;		//二审通过状态
	public static final int SECOND_REJECT = 7;		//二审拒绝状态
	
	public static int dinnerPropertyID = 0;	//申请表ID
	public static int dinnerReviewID = 0;	//审核表ID
	public static String excutionID;		//流程表ID
	public static int STATUS = 0;			//用户执行的状态字
	public static String companyManagerID;	//审核公司管理员ID
	
	@Autowired
	private UserService userService;
	@Autowired
	private JobService jobService;
	@Autowired
	private BranchService branchService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private DinnerPropertyTableService dinnerPropertyServiceTemp;
	public static DinnerPropertyTableService dinnerPropertyService;
	@Autowired
	private DinnerReviewService dinnerReviewServiceTemp;
	public static DinnerReviewService dinnerReviewService;
	@Autowired
	private ActivitiUtil activitiUtil;
	
	/**
	 * 用餐申请页面跳转
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/property/dinnerApplicant", method=RequestMethod.GET)
	public ModelAndView dinnerApplicant(HttpSession session){
		User user = (User) session.getAttribute("user");
		String branchName, companyName;
		JobEntity job = jobService.getJobByJobID(user.getJobId());
		BranchEntity branchEntity = branchService.getBranchManager(job.getBranchId());
		branchName = branchEntity.getBranchName();
		companyName = companyService.getCompanyManager(branchEntity.getCompanyId()).getCompanyName();
		
		return new ModelAndView("/function/dinner-application").addObject("branchName", branchName).addObject("companyName", companyName);
	}
	
	/**
	 * 用餐申请数据显示
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/property/dinnerApplicationView", method=RequestMethod.GET)
	public ModelAndView dinnerApplicationView(HttpSession session){
		initService();
		User user = (User) session.getAttribute("user");
		List<DinnerPropertyTableEntity> dinnerPropertys = dinnerPropertyService.getAllDinnerPropertyTableByUserName(user.getUserName());
		Map<String, List<DinnerPropertyTableEntity>> map =new HashMap<>();
		map.put("dinnerPropertys", dinnerPropertys);
		return new ModelAndView("/function/dinner-application-view", map);
	}
	
	/**
	 * 用餐申请审核跳转
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/property/dinnerAuditing", method=RequestMethod.GET)
	public ModelAndView dinnerAuditing(HttpSession session){
		initService();
		List<DinnerPropertyTableEntity> dinnerPorpertys = dinnerPropertyService.getDinnerPropertyTableByVertifyUser(((User)session.getAttribute("user")).getUserName());
		Map<String, List<AuditingDinnerPropertyEntity>> map = new HashMap<>();
		map.put("dinnerPropertys", dealPropertyData(dinnerPorpertys, (User)session.getAttribute("user")));
		
		return new ModelAndView("/function/dinner-auditing", map);
	}
	
	/**
	 * 用餐审核流程控制
	 * @param id	申请表id
	 * @param status	执行状态
	 * @param session	
	 * @return
	 */
	@RequestMapping(value="/property/dinnerAuditingControl/{id}/{status}", method=RequestMethod.GET)
	public ModelAndView dinnerAuditingControl(@PathVariable("id") int id, @PathVariable("status") int status, HttpSession session){
		initService();
		initData(id, status);
		DinnerPropertyTableEntity entity = dinnerPropertyService.getDinnerPropertyTableById(id);
		int branchID = entity.getBranchId();
		int companyID = entity.getCompanyId();
		companyManagerID = ((CompanyEntity)companyService.getCompanyManager(companyID)).getCompanyManager();
		String branchManagerID = branchService.getBranchManager(branchID).getBranchManager();
		
		switch(status){
		case REJECT_HANDLE:
			activitiUtil.excuteDinnerProcess(excutionID, false);
			break;
		case FIRST_STAGE_START:
			activitiUtil.excuteDinnerProcess(excutionID, true);
			break;
		case FIRST_REJECT:
			activitiUtil.excuteDinnerProcess(excutionID, false);
			break;
		case SECOND_STAGE_START:
			activitiUtil.excuteDinnerProcess(excutionID, true);
			break;
		case SECOND_PASS:
			activitiUtil.excuteDinnerProcess(excutionID, true);
			break;
		case SECOND_REJECT:
			activitiUtil.excuteDinnerProcess(excutionID, false);
			break;
		}
		
		List<DinnerPropertyTableEntity> dinnerPorpertys = dinnerPropertyService.getDinnerPropertyTableByVertifyUser(((User)session.getAttribute("user")).getUserName());
		Map<String, List<AuditingDinnerPropertyEntity>> map = new HashMap<>();
		map.put("dinnerPropertys", dealPropertyData(dinnerPorpertys, (User)session.getAttribute("user"), branchManagerID, companyManagerID));
		
		return new ModelAndView("/function/dinner-auditing", map);
	}
	
	/**
	 * 用餐申请管理
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/property/dinnerManagement", method=RequestMethod.GET)
	public ModelAndView dinnerManagement(HttpSession session){
		initService();
		return new ModelAndView("/function/dinner-management", controlManagementData());
	}
	
	/**
	 * 用餐申请提交
	 * @param dinnerPropertyEntity	表单呈递数据
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/addDinnerProperty", method=RequestMethod.POST)
	public ModelAndView addDinnerProperty(DinnerPropertyTableEntity dinnerPropertyEntity, HttpSession session){
		initService();
		User user = (User) session.getAttribute("user");
		JobEntity job = jobService.getJobByJobID(user.getJobId());
		BranchEntity branchEntity = branchService.getBranchManager(job.getBranchId());
		CompanyEntity companyEntity = companyService.getCompanyManager(branchEntity.getCompanyId());
		
		dinnerPropertyEntity.setApplyOrChargeUserName(user.getUserName());
		dinnerPropertyEntity.setBranchId(branchEntity.getBranchId());
		dinnerPropertyEntity.setCompanyId(companyEntity.getCompanyId());
		dinnerPropertyEntity.setApplyTime(formatTime());
		
		int dinnerPropertyID = dinnerPropertyService.addDinnerPropertyTable(dinnerPropertyEntity);
		startDinnerAcititi(dinnerPropertyID, branchEntity.getBranchManager(), companyEntity.getCompanyManager());
		
		List<DinnerPropertyTableEntity> dinnerPropertys = dinnerPropertyService.getAllDinnerPropertyTableByUserName(user.getUserName());
		Map<String, List<DinnerPropertyTableEntity>> map =new HashMap<>();
		map.put("dinnerPropertys", dinnerPropertys);
		return new ModelAndView("/function/dinner-application-view", map);
	}
	
	private boolean startDinnerAcititi(int dinnerPropertyTableId, String branchVertifyUser, String companyVertifyUser){
		return activitiUtil.startDinnerProcess(dinnerPropertyTableId, branchVertifyUser, companyVertifyUser);
	}
	
	/*
	 * 时间格式化
	 */
	private Timestamp formatTime(){
		Date dt = new Date();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String nowTime = df.format(dt);
		return Timestamp.valueOf(nowTime); 
	}
	
	/*
	 * 数据取值赋值
	 */
	private void initData(int propertyID, int status){
		STATUS = status;
		dinnerPropertyID = propertyID;
		DinnerReviewEntity reviewEntity = dinnerReviewService.getDinnerReviewByPropertyID(propertyID);
		dinnerReviewID = reviewEntity.getDinnerReviewId();
		excutionID = reviewEntity.getExcutionId();
	}
	
	/*
	 * 数据实体转移
	 */
	private List<AuditingDinnerPropertyEntity> dealPropertyData(List<DinnerPropertyTableEntity> dinnerPropertys, User currentUser, String branchManager, String companyManager){
		List<AuditingDinnerPropertyEntity> resultList = new ArrayList<>();
		for(DinnerPropertyTableEntity entity : dinnerPropertys){
			if(currentUser.getUserName().equals(companyManager)){
				if(entity.getStatus() < SECOND_STAGE_START)
					continue;
			}
			AuditingDinnerPropertyEntity audiEntity = new AuditingDinnerPropertyEntity();
			audiEntity.setDinnerPropertyTableId(entity.getDinnerPropertyTableId());
			audiEntity.setApplyOrChargeUserName(entity.getApplyOrChargeUserName());
			audiEntity.setBranchId(entity.getBranchId());
			audiEntity.setCompanyId(entity.getCompanyId());
			audiEntity.setStartDate(entity.getStartDate());
			audiEntity.setFinishDate(entity.getFinishDate());
			audiEntity.setContactInfo(entity.getContactInfo());
			audiEntity.setArrangePersonCount(entity.getArrangePersonCount());
			audiEntity.setDinnerType(entity.getDinnerType());
			audiEntity.setAddition(entity.getAddition());
			audiEntity.setStatus(entity.getStatus());
			audiEntity.setApplyTime(entity.getApplyTime());
			
			//角色控制
			audiEntity.setCurrentUser(currentUser.getUserName());
			audiEntity.setBranchVertifyUser(branchManager);
			audiEntity.setCompanyVertifyUser(companyManager);
			
			resultList.add(audiEntity);
		}
		
		return resultList;
	}
	
	/*
	 * 数据实体转移
	 */
	private List<AuditingDinnerPropertyEntity> dealPropertyData(List<DinnerPropertyTableEntity> dinnerPropertys, User currentUser){
		List<AuditingDinnerPropertyEntity> resultList = new ArrayList<>();
		for(DinnerPropertyTableEntity entity : dinnerPropertys){
			String companyManager = companyService.getCompanyManager(entity.getCompanyId()).getCompanyManager();
			if(currentUser.getUserName().equals(companyManager)){
				if(entity.getStatus() < SECOND_STAGE_START)
					continue;
			}
			AuditingDinnerPropertyEntity audiEntity = new AuditingDinnerPropertyEntity();
			audiEntity.setDinnerPropertyTableId(entity.getDinnerPropertyTableId());
			audiEntity.setApplyOrChargeUserName(entity.getApplyOrChargeUserName());
			audiEntity.setBranchId(entity.getBranchId());
			audiEntity.setCompanyId(entity.getCompanyId());
			audiEntity.setStartDate(entity.getStartDate());
			audiEntity.setFinishDate(entity.getFinishDate());
			audiEntity.setContactInfo(entity.getContactInfo());
			audiEntity.setArrangePersonCount(entity.getArrangePersonCount());
			audiEntity.setDinnerType(entity.getDinnerType());
			audiEntity.setAddition(entity.getAddition());
			audiEntity.setStatus(entity.getStatus());
			audiEntity.setApplyTime(entity.getApplyTime());
			
			//角色控制
			audiEntity.setCurrentUser(currentUser.getUserName());
			audiEntity.setBranchVertifyUser(branchService.getBranchManager(entity.getBranchId()).getBranchManager());
			audiEntity.setCompanyVertifyUser(companyService.getCompanyManager(entity.getCompanyId()).getCompanyManager());
			
			resultList.add(audiEntity);
		}
		
		return resultList;
	}
	
	/*
	 * Hashmap取值定义
	 */
	public Map<String, List<ManagementDinnerPropertyEntity>> controlManagementData(){
		List<DinnerPropertyTableEntity> dinnerTableEntityList = dinnerPropertyService.getAllDinnerPropertyTable();
		List<ManagementDinnerPropertyEntity> managementPropertyList = new ArrayList<>();
		for(DinnerPropertyTableEntity entity : dinnerTableEntityList){
			ManagementDinnerPropertyEntity proEntity = new ManagementDinnerPropertyEntity();
			proEntity.setApplyOrChargeUserName(entity.getApplyOrChargeUserName());
			proEntity.setStartDate(entity.getStartDate());
			proEntity.setFinishDate(entity.getFinishDate());
			proEntity.setCompanyName(((CompanyEntity)companyService.getCompanyManager(entity.getCompanyId())).getCompanyName());
			proEntity.setBranchName(((BranchEntity)branchService.getBranchManager(entity.getBranchId())).getBranchName());
			proEntity.setApplyUser(userService.getUserByUserName(entity.getApplyOrChargeUserName()).getAccountName());
			proEntity.setContactInfo(entity.getContactInfo());
			proEntity.setStatus(entity.getStatus());
			proEntity.setArrangePersonCount(entity.getArrangePersonCount());
			proEntity.setDinnerType(entity.getDinnerType());
			proEntity.setAddition(entity.getAddition());
			proEntity.setApplyTime(entity.getApplyTime());
			proEntity.setAddition(entity.getAddition());
			managementPropertyList.add(proEntity);
		}
		Map<String, List<ManagementDinnerPropertyEntity>> resultMap = new HashMap<>();
		resultMap.put("dinnerPropertyList",managementPropertyList);
		return resultMap;
	}
	
	
	private void initService(){
		dinnerPropertyService = dinnerPropertyServiceTemp;
		dinnerReviewService = dinnerReviewServiceTemp;
	}
}
