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

import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.Information;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.JobEntity;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.InfoService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
import com.GB.ChinaMobileMS.services.interfaces.JobService;
import com.GB.ChinaMobileMS.services.interfaces.PropertyApplicantService;
import com.GB.ChinaMobileMS.services.interfaces.PropertyServices;
import com.GB.ChinaMobileMS.services.interfaces.UserService;
import com.GB.ChinaMobileMS.services.interfaces.WaitForInvestigationService;



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
	private WaitForInvestigationService waitForInvestigationService;
	// 系统设置 跳转页面
	@RequestMapping(value = "/system/{id}", method = RequestMethod.GET)
	public ModelAndView systemUser(User user, @PathVariable("id") String id, HttpSession session) {
		// requestParam获取参数id
		System.out.println("id=" + id);
		if (id.equals("user")) {
			return GetUserList();
		} else if (id.equals("parameter")) {
			return GetInfo();
		} else if (id.equals("user-add"))
			return new ModelAndView("/function/system-user-add");
		else if (id.equals("role-assignment"))
			return new ModelAndView("/function/system-role-assignment");
		else if (id.equals("role-assignment-add"))
			return new ModelAndView("/function/system-role-assignment-add");
		else if (id.equals("role-authorization"))
			return new ModelAndView("/function/system-role-authorization");
		else if (id.equals("role-authorization-add"))
			return new ModelAndView("/function/system-role-authorization-add");
		else if (id.equals("parameter-update")) {
			return new ModelAndView("/function/system-parameter-update");
		} else if (id.equals("data"))
			return new ModelAndView("/function/system-data");
		else
			return new ModelAndView("forward:/");
	}

	// 物业服务 跳转页面
	@RequestMapping(value = "/property/{id}", method = RequestMethod.GET)
	public ModelAndView propertyUser(User user, @PathVariable("id") String id, HttpSession session) {
		if (id.equals("server")) {
			List<PropertyServiceEntity> listPropertyApplicant = propertyApplicantService.listPropertyApplicant();
			Map<String, List<PropertyServiceEntity>> map = new HashMap<String, List<PropertyServiceEntity>>();
			map.put("listPropertyApplicant", listPropertyApplicant);
			return new ModelAndView("/function/property-server",map);
		} else if (id.equals("auditing")) {
			List<PropertyServiceEntity> propertyList = propertyService.getPropertyTableByVertifyUser(((User)session.getAttribute("user")).getUserName());
			Map map = new HashMap();
			map.put("propertyServiceList", propertyList);
			return new ModelAndView("/function/property-auditing", map);
		} 
		else if (id.equals("management"))
			return new ModelAndView("/function/property-management");
		else if (id.equals("management-data"))
			return new ModelAndView("/function/property-management-data");
		else if (id.equals("management-system"))
			return new ModelAndView("/function/property-management-system");
		else if(id.equals("management-system-add"))
			return new ModelAndView("/function/property-management-system-add");		
		else if(id.equals("applicant")) {
			user = (User)session.getAttribute("user");
			
    		String branchName, companyName;
    		JobEntity job = jobService.getJobByJobID(user.getJobId());
    		System.out.println("job = " + job);
    		BranchEntity branchEntity = branchService.getBranchManager(job.getBranchId());
    		branchName = branchEntity.getBranchName();
    		companyName = companyService.getCompanyManager(branchEntity.getCompanyId()).getCompanyName();
    		
			return new ModelAndView("/function/property-applicant").addObject("branchName", branchName).addObject("companyName", companyName);
		}

		else
			return new ModelAndView("forward:/");
	}

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
		else if (id.equals("management-table-make"))
			return new ModelAndView("/function/service-management-table-make");
		else if (id.equals("table-info"))
			return new ModelAndView("/function/service-table-info");
		else if (id.equals("management-send"))
			return new ModelAndView("/function/service-management-send");
		else if (id.equals("date-statistics"))
			return new ModelAndView("/function/service-date-statistics");
		else if (id.equals("table-write"))
			return new ModelAndView("/function/service-table-write");
		else
			return new ModelAndView("forward:/");
	}

	
	
	
	
	
	


	public ModelAndView GetInfo() {

		Information info = infoService.findbyInfoID();

		ModelAndView mac = new ModelAndView("/function/system-parameter");
		mac.addObject("topic", info.getTopic());
		mac.addObject("time", info.getTime());
		mac.addObject("content", info.getContent());
		mac.addObject("recomandRoleId", info.getRecomandRoleId());

		return mac;
	}

	public ModelAndView GetUserList() {
		List<User> listUser = userService.listUser();
		Map map = new HashMap();
		map.put("listUser", listUser);// userlist是个Arraylist之类的
		return new ModelAndView("/function/system-user", map);
	}
}
