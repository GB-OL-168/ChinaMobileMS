package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
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
import com.GB.ChinaMobileMS.entity.JobEntity;
import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.Role;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.InfoService;
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
		} else if (id.equals("user-add"))
			return new ModelAndView("/function/system-user-add");
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

	// 物业服务 跳转页面
	@RequestMapping(value = "/property/{id}", method = RequestMethod.GET)
	public ModelAndView propertyUser(User user, @PathVariable("id") String id,
			HttpSession session) {
		if (id.equals("server")) {
			List<PropertyServiceEntity> listPropertyApplicant = propertyApplicantService
					.listPropertyApplicant();
			Map<String, List<PropertyServiceEntity>> map = new HashMap<String, List<PropertyServiceEntity>>();
			map.put("listPropertyApplicant", listPropertyApplicant);
			return new ModelAndView("/function/property-server", map);
		} else if (id.equals("auditing")) {
			List<PropertyServiceEntity> propertyList = propertyService
					.getPropertyTableByVertifyUser(((User) session
							.getAttribute("user")).getUserName());
			Map map = new HashMap();
			map.put("propertyServiceList", propertyList);
			return new ModelAndView("/function/property-auditing", map);
		} else if (id.equals("management"))
			return new ModelAndView("/function/property-management");
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

	@RequestMapping(value = "/service/{id}", method = RequestMethod.GET)
	public ModelAndView ServiceUser(User user, @PathVariable("id") String id,
			HttpSession session) {
		if (id.equals("management-check"))
			return new ModelAndView("/function/service-management-check");
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

	public ModelAndView GetUserList2() {
		List<User> listUser = userService.listUser();
		List<Role> listRole = roleService.ListRole();
		Iterator<User> it1 = listUser.iterator();
		while (it1.hasNext()) {
			Iterator<Role> it2 = listRole.iterator();
			User tmpUser = it1.next();

			int i = 1;
			while (tmpUser.getRoleName() == null && it2.hasNext()) {
				Role tmpRole = it2.next();
				System.out.println("the times of while: " + i++);
				if (tmpUser.getRoleId() == tmpRole.getRoleId()) {
					tmpUser.setRoleName(tmpRole.getRoleName());
					break;
				}

			}

		}

		Map map = new HashMap();
		map.put("listUser", listUser);// userlist是个Arraylist之类的
		return new ModelAndView("/function/system-role-assignment", map);
	}

	public ModelAndView GetRoleList() {
		List<Role> listRole = roleService.ListRole();
		Map map = new HashMap();
		map.put("listRole", listRole);
		return new ModelAndView("/function/system-role-authorization", map);
	}
}
