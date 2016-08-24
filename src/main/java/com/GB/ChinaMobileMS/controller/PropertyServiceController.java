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

	public static final int NOT_START = 0;
	public static final int REJECT_HANDLE = 1;
	public static final int FIRST_STAGE_START = 2;
	public static final int FIRST_REJECT = 4;
	public static final int SECOND_STAGE_START = 5;
	public static final int SECOND_PASS = 6;
	public static final int SECOND_REJECT = 7;
	
	public static int propertyID = 0;
	public static int reviewID = 0;
	public static String excutionID;
	public static int STATUS = 0;
	public static String companyManagerID;
	
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
		
		initData(id, status);
		
		PropertyServiceEntity entity = ((List<PropertyServiceEntity>)updatePropertyServices.getPropertyTableByID(id)).get(0);
		int companyID = entity.getCompanyId();
		int branchID = entity.getBranchId();
		companyManagerID = ((CompanyEntity)companyService.getCompanyManager(companyID)).getCompanyManager();
		String branchManagerID = branchService.getBranchManager(branchID).getBranchManager();
		
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
		
		List<PropertyServiceEntity> propertyServiceList=updatePropertyServices.getPropertyTableByVertifyUser(((User)session.getAttribute("user")).getUserName());
		Map<String, List<AuditingPrpoertyEntity>> newmap = new HashMap<>();
		newmap.put("propertyServiceList", dealPropertyData(propertyServiceList, (User)session.getAttribute("user"), branchManagerID, companyManagerID));
		List<AuditingPrpoertyEntity> list = newmap.get("propertyServiceList");
		return new ModelAndView("/function/property-auditing",newmap);	
	}
	
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
	
	private void initData(int propertyID, int status){
		STATUS = status;
		PropertyServiceController.propertyID = propertyID;
		
		ReviewEntity reviewEntity = reviewService.getReviewByPropertyID(propertyID);
		reviewID = reviewEntity.getReviewId();
		excutionID = reviewEntity.getExcutionId();
	}
	
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
