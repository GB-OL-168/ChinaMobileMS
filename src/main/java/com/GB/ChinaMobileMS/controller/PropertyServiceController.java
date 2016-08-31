package com.GB.ChinaMobileMS.controller;

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

import com.GB.ChinaMobileMS.activiti_util.ActivitiUtil;
import com.GB.ChinaMobileMS.entity.AuditingPrpoertyEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.ReviewEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.PropertyApplicantService;
import com.GB.ChinaMobileMS.services.interfaces.PropertyServices;
import com.GB.ChinaMobileMS.services.interfaces.ReviewService;
@Controller
public class PropertyServiceController {

	public static final int NOT_START = 0;			//为开始状态
	public static final int REJECT_HANDLE = 1;		//拒绝受理状态
	public static final int FIRST_STAGE_START = 2;	//一审开始阶段状态
	public static final int FIRST_REJECT = 4;		//一审拒绝阶段状态
	public static final int SECOND_STAGE_START = 5;	//二审开始阶段状态
	public static final int SECOND_PASS = 6;		//二审通过状态
	public static final int SECOND_REJECT = 7;		//二审拒绝状态
	
	public static int propertyID = 0;		//申请表ID
	public static int reviewID = 0;			//审核表ID
	public static String excutionID;		//流程表ID
	public static int STATUS = 0;			//用户执行的状态字
	public static String companyManagerID;	//审核公司管理员ID
	
	@Autowired
	private PropertyServices updatePropertyServicesTemp;
	public static PropertyServices updatePropertyServices;
	@Autowired
	private ActivitiUtil activitiUtil;
	@Autowired
	private ReviewService reviewServiceTemp;
	public static ReviewService reviewService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private BranchService branchService;
	@Autowired
	private PropertyApplicantService propertyApplicantService;
	
	@RequestMapping(value="/property/propertyService/{id}/{status}", method=RequestMethod.GET)
	public ModelAndView propertyService(@PathVariable("id") int id, @PathVariable("status") int status,HttpSession session){
		updatePropertyServices = updatePropertyServicesTemp;
		reviewService = reviewServiceTemp;
		
		//初始化数据
		initData(id, status);
		
		//实体赋值，获取审核人的id（一审、二审人）
		PropertyServiceEntity entity = ((List<PropertyServiceEntity>)updatePropertyServices.getPropertyTableByID(id)).get(0);
		int companyID = entity.getCompanyId();
		int branchID = entity.getBranchId();
		companyManagerID = ((CompanyEntity)companyService.getCompanyManager(companyID)).getCompanyManager();
		String branchManagerID = branchService.getBranchManager(branchID).getBranchManager();
		
		//根据用户选择的状态字进行流程的监听执行
		switch(status){
		case REJECT_HANDLE:
			activitiUtil.excuteProcess(excutionID, false);
			break;
		case FIRST_STAGE_START:
			activitiUtil.excuteProcess(excutionID, true);
			break;
		case FIRST_REJECT:
			activitiUtil.excuteProcess(excutionID, false);
			break;
		case SECOND_STAGE_START:
			activitiUtil.excuteProcess(excutionID, true);
			break;
		case SECOND_PASS:
			activitiUtil.excuteProcess(excutionID, true);
			break;
		case SECOND_REJECT:
			activitiUtil.excuteProcess(excutionID, false);
			break;
		}
		
		//重新获取数据并刷新页面
		List<PropertyServiceEntity> propertyServiceList=updatePropertyServices.getPropertyTableByVertifyUser(((User)session.getAttribute("user")).getUserName());
		Map<String, List<AuditingPrpoertyEntity>> newmap = new HashMap<>();
		newmap.put("propertyServiceList", dealPropertyData(propertyServiceList, (User)session.getAttribute("user"), branchManagerID, companyManagerID));
		return new ModelAndView("/function/property-auditing",newmap);	
	}
	
	/**
	 * 修改临时需求
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/modifyTempDemand", method=RequestMethod.POST)
	public ModelAndView modifyTempDemand(HttpServletRequest request, HttpSession session){
		int propertyTableID = Integer.valueOf(request.getParameter("modify_id"));
		String modifyMessage = request.getParameter("message");
		
		propertyApplicantService.setPropertyTempDemand(propertyTableID, modifyMessage);
		
		List<PropertyServiceEntity> listPropertyApplicant = propertyApplicantService.getPropertyApplicantByApplyUserName(((User)session.getAttribute("user")).getUserName());
		Map<String, List<PropertyServiceEntity>> map = new HashMap<>();
		map.put("listPropertyApplicant", listPropertyApplicant);
		return new ModelAndView("/function/property-server",map);
	}
	
	/**
	 * 初始化数据
	 * @param propertyID	申请表ID
	 * @param status		用户选择的状态字
	 */
	private void initData(int propertyID, int status){
		STATUS = status;
		PropertyServiceController.propertyID = propertyID;
		
		ReviewEntity reviewEntity = reviewService.getReviewByPropertyID(propertyID);
		reviewID = reviewEntity.getReviewId();
		excutionID = reviewEntity.getExcutionId();
	}
	
	/**
	 * 数据转移，返回至前端显示的实体列表
	 * @param propertyList		源列表
	 * @param currentUser		当前用户
	 * @param branchManager		部门管理员
	 * @param companyManager	公司管理员
	 * @return
	 */
	private List<AuditingPrpoertyEntity> dealPropertyData(List<PropertyServiceEntity> propertyList, User currentUser, String branchManager, String companyManager){
		List<AuditingPrpoertyEntity> resultList = new ArrayList<>();
		for(PropertyServiceEntity entity : propertyList){
			AuditingPrpoertyEntity audiEntity = new AuditingPrpoertyEntity();
			//数据转移
			audiEntity.setPropertyTableId(entity.getPropertyTableId());
			audiEntity.setApplyUserName(entity.getApplyUserName());
			audiEntity.setCompanyId(entity.getCompanyId());
			audiEntity.setBranchId(entity.getBranchId());
			audiEntity.setGotId(entity.getGotId());
			audiEntity.setDiningService(entity.getDiningService());
			audiEntity.setReceptionService(entity.getReceptionService());
			audiEntity.setEnviromentMaintain(entity.getEnviromentMaintain());
			audiEntity.setEngineeringManage(entity.getEngineeringManage());
			audiEntity.setFirefightingManage(entity.getFirefightingManage());
			audiEntity.setOlderMantain(entity.getOlderMantain());
			audiEntity.setServiceId(entity.getServiceId());
			audiEntity.setContactInfo(entity.getContactInfo());
			audiEntity.setServiceDate(entity.getServiceDate());
			audiEntity.setServiceLocation(entity.getServiceLocation());
			audiEntity.setServiceCommand(entity.getServiceCommand());
			audiEntity.setAddition(entity.getAddition());
			audiEntity.setApplyTime(entity.getApplyTime());
			audiEntity.setConcreteTime(entity.getConcreteTime());
			audiEntity.setStatus(entity.getStatus());
			audiEntity.setTemporaryDemand(entity.getTemporaryDemand());
			
			//角色控制
			audiEntity.setCurrentUser(currentUser.getUserName());
			audiEntity.setBranchVertifyUser(branchManager);
			audiEntity.setCompanyVertifyUser(companyManager);
			
			resultList.add(audiEntity);
		}
		return resultList;
	}
}
