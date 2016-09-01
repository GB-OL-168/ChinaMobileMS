package com.GB.ChinaMobileMS.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.AuditingPrpoertyEntity;
import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.Information;
import com.GB.ChinaMobileMS.entity.JobEntity;
import com.GB.ChinaMobileMS.entity.ManagementPropertyEntity;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.Role;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.InfoService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
import com.GB.ChinaMobileMS.services.interfaces.JobService;
import com.GB.ChinaMobileMS.services.interfaces.PropertyApplicantService;
import com.GB.ChinaMobileMS.services.interfaces.PropertyServices;
import com.GB.ChinaMobileMS.services.interfaces.RoleService;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Controller
public class FunctionController {

	@Autowired
	private UserService userService;
	@Autowired
	private PropertyServices propertyServices;
	@Autowired
	private PropertyApplicantService propertyApplicantService;
	@Autowired
	private InfoService infoService;
	@Autowired
	private PropertyServices propertyService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private BranchService branchService;
	@Autowired
	private JobService jobService;
	@Autowired
	private InvestigationTableService investigationTableService;
	@Autowired
	private RoleService roleService;

	// 系统设置 跳转页面
	@RequestMapping(value = "/system/{id}", method = RequestMethod.GET)
	public ModelAndView systemUser(User user, @PathVariable("id") String id,
			HttpSession session) {
		// requestParam获取参数id
		System.out.println("id=" + id);
		if (id.equals("user")) {
			return GetUserList();
		} else if (id.equals("parameter")) {
			return GetInfo();
		} 
		else if (id.equals("role-assignment"))
			return GetUserList2();
		else if (id.equals("role-assignment-add"))
			return new ModelAndView("/function/system-role-assignment-add");
		else if (id.equals("role-authorization"))
			return GetRoleList();
		else if (id.equals("role-authorization-add"))
			return new ModelAndView("/function/system-role-authorization-add");
		else if (id.equals("parameter-update")) {
			return new ModelAndView("/function/system-parameter-update");
		} else if (id.equals("data"))
			return new ModelAndView("/function/system-data");
		else
			return new ModelAndView("forward:/");
	}

	// 角色分配跳转页面
	@RequestMapping(value = "/authorization/{id}/{roleName}", method = RequestMethod.GET)
	public ModelAndView authorizationUser(User user,@PathVariable("id") String id,
			@PathVariable("roleName") String roleName, HttpSession session) {
		if(id.equals("details"))
		return GetRoledetails(roleName);
		else 
			return null;
	}

	// 物业服务 跳转页面
	@RequestMapping(value = "/property/{id}", method = RequestMethod.GET)
	public ModelAndView propertyUser(User user, @PathVariable("id") String id,
			HttpSession session) {
		if (id.equals("server")) {
			List<PropertyServiceEntity> listPropertyApplicant = propertyApplicantService.getPropertyApplicantByApplyUserName(((User)session.getAttribute("user")).getUserName());
			Map<String, List<PropertyServiceEntity>> map = new HashMap<String, List<PropertyServiceEntity>>();
			map.put("listPropertyApplicant", listPropertyApplicant);
			return new ModelAndView("/function/property-server", map);
		} else if (id.equals("auditing")) {
			List<PropertyServiceEntity> propertyList = propertyService.getPropertyTableByVertifyUser(((User)session.getAttribute("user")).getUserName());
			Map<String, List<AuditingPrpoertyEntity>> map = new HashMap<>();
			map.put("propertyServiceList", dealPropertyData(propertyList, ((User)session.getAttribute("user"))));
			return new ModelAndView("/function/property-auditing", map);
		} 
		else if (id.equals("management"))
			return new ModelAndView("/function/property-management", controlManagementData());
		else if (id.equals("management-data"))
			return new ModelAndView("/function/property-management-data");
		else if (id.equals("management-system"))
			return new ModelAndView("/function/property-management-system");
		else if (id.equals("management-system-add"))
			return new ModelAndView("/function/property-management-system-add");
		else if (id.equals("applicant")) {
			user = (User) session.getAttribute("user");

			String branchName, companyName;
			JobEntity job = jobService.getJobByJobID(user.getJobId());
			System.out.println("job = " + job);
			BranchEntity branchEntity = branchService.getBranchManager(job
					.getBranchId());
			branchName = branchEntity.getBranchName();
			companyName = companyService.getCompanyManager(
					branchEntity.getCompanyId()).getCompanyName();

			return new ModelAndView("/function/property-applicant").addObject(
					"branchName", branchName).addObject("companyName",
					companyName);
		}

		else
			return new ModelAndView("forward:/");
	}


	
	/*
	 * 参数设置-获取提醒信息
	 */
	public ModelAndView GetInfo() {

		Information info = infoService.findbyInfoID();

		ModelAndView mac = new ModelAndView("/function/system-parameter");
		mac.addObject("topic", info.getTopic());
		mac.addObject("time", info.getTime());
		mac.addObject("content", info.getContent());
		mac.addObject("recomandRoleId", info.getRecomandRoleId());

		return mac;
	}

	/*
	 * 帐号管理-获取用户信息
	 */
	public ModelAndView GetUserList() {
		List<User> listUser = userService.listUser();
		Map map = new HashMap();
		map.put("listUser", listUser);// userlist是个Arraylist之类的
		return new ModelAndView("/function/system-user", map);
	}
	
	public Map<String, List> controlManagementData(){
		List<PropertyServiceEntity> propertyServiceEntityList = propertyService.auditParty();
		List<ManagementPropertyEntity> managementPropertyList = new ArrayList<>();
		for(PropertyServiceEntity entity : propertyServiceEntityList){
			ManagementPropertyEntity proEntity = new ManagementPropertyEntity();
			proEntity.setApplyTime(entity.getApplyTime());
			proEntity.setServiceDate(entity.getServiceDate());
			proEntity.setServiceLocation(entity.getServiceLocation());
			proEntity.setCompanyName(((CompanyEntity)companyService.getCompanyManager(entity.getCompanyId())).getCompanyName());
			proEntity.setBranchName(((BranchEntity)branchService.getBranchManager(entity.getBranchId())).getBranchName());
			proEntity.setApplyUser(userService.getUserByUserName(entity.getApplyUserName()).getAccountName());
			proEntity.setContactInfo(entity.getContactInfo());
			proEntity.setStatus(entity.getStatus());
			proEntity.setDiningService(entity.getDiningService());
			proEntity.setReceptionService(entity.getReceptionService());
			proEntity.setEnviromentMaintain(entity.getEnviromentMaintain());
			proEntity.setEngineeringManage(entity.getEngineeringManage());
			proEntity.setFirefightingManage(entity.getFirefightingManage());
			proEntity.setServiceCommand(entity.getServiceCommand());
			proEntity.setAddition(entity.getAddition());
			managementPropertyList.add(proEntity);
		}
		Map<String, List> resultMap = new HashMap<>();
		resultMap.put("propertyList",managementPropertyList);
		return resultMap;
	}
	
	private List<AuditingPrpoertyEntity> dealPropertyData(List<PropertyServiceEntity> propertyList, User currentUser){
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
			audiEntity.setBranchVertifyUser(branchService.getBranchManager(entity.getBranchId()).getBranchManager());
			audiEntity.setCompanyVertifyUser(companyService.getCompanyManager(entity.getCompanyId()).getCompanyManager());
			
			resultList.add(audiEntity);
		}
		return resultList;
	}

	/*
	 * 权限设置-设置系统角色-获取用户信息以及权限信息
	 */
	public ModelAndView GetUserList2() {
		List<User> listUser = userService.listUser();
		List<Role> listRole = roleService.ListRole();
		Iterator<User> it1 = listUser.iterator();
		while (it1.hasNext()) {
			Iterator<Role> it2 = listRole.iterator();
			User tmpUser = it1.next();

			while (tmpUser.getRoleName() == null && it2.hasNext()) {
				Role tmpRole = it2.next();

				if (tmpUser.getRoleId() == tmpRole.getRoleId()) {
					tmpUser.setRoleName(tmpRole.getRoleName());
					break;
				}

			}

		}

		Map map = new HashMap();
		map.put("listUser", listUser);// userlist是个Arraylist之类的
		map.put("listRole", listRole);
		return new ModelAndView("/function/system-role-assignment", map);
	}
	/*
	 * 权限设置-角色授权-获取角色权限信息
	 */
	public ModelAndView GetRoleList() {
		List<Role> listRole = roleService.ListRole();
		Map map = new HashMap();
		map.put("listRole", listRole);
		return new ModelAndView("/function/system-role-authorization", map);
	}

	/*
	 * 权限设置-角色授权-获取角色权限详细信息
	 */
	public ModelAndView GetRoledetails(String roleName) {
		Role role = roleService.findRoleByName(roleName);
		ModelAndView mac = new ModelAndView("/function/system-role-authorization-details");
//		mac.addObject("roleName", role.getRoleName());
//		mac.addObject("sysAccountManage", role.getSysAccountManage());
//		mac.addObject("sysPrivilegeSetting", role.getSysPrivilegeSetting());
//		mac.addObject("sysParameterSetting", role.getSysParameterSetting());
//		mac.addObject("sysDataRestore", role.getSysDataRestore());
//		mac.addObject("proServerApplication", role.getProServerApplication());
//		mac.addObject("proAuditingApplication",
//				role.getProAuditingApplication());
//		mac.addObject("proManagementApplication",
//				role.getProManagementApplication());
//		mac.addObject("description", role.getDescription());
		mac.addObject("Role",role);
		return mac;
	}
}
