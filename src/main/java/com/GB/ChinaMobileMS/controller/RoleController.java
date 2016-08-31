package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.dao.RoleMapper;
import com.GB.ChinaMobileMS.entity.Role;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.RoleService;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Controller
public class RoleController {
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;

	@RequestMapping(value = "/updateUserRole", method = RequestMethod.POST)
	public ModelAndView updateUserRole(User user, HttpSession session) {
		
		// System.out.println("End of set new role id");
		String str = userService.updateUserRole(user);
		return GetUserList2();
	}

	@RequestMapping(value = "/addRole", method = RequestMethod.GET)
	public ModelAndView addRole(Role role, HttpSession session) {
		int flag = roleService.addRole(role);
		
		return GetRoleList();
	}

	@RequestMapping(value = "/updateRole", method = RequestMethod.GET)
	public ModelAndView updateRole(Role role, HttpSession session) {
		System.out.println("updateRole");
		System.out.println("Role:" + role);
		String str = roleService.updateRole(role);
		return GetRoleList();
	}

	@RequestMapping(value = "/delRole/{roleId}", method = RequestMethod.GET)
	public ModelAndView delRole(HttpSession session,
			@PathVariable("roleId") int roleId) {
		System.out.println("delRole");
		System.out.println("Role_id:" + roleId);
		int flag = roleService.deleteRoleByName(roleId);
		if (flag == 1) {
			System.out.println("can't delete this Role");
			return GetRoleList1();
		} else {
			return GetRoleList();
		}
		
	}

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

	public ModelAndView GetRoleList1() {
		List<Role> listRole = roleService.ListRole();
		Map<String, List<Role>> map = new HashMap<String, List<Role>>();
		map.put("listRole", listRole);
		ModelAndView a =new ModelAndView("/function/system-role-authorization",map);
		int flag=1;
		a.addObject("flag",flag);
		return a;
	}
	
	public ModelAndView GetRoleList() {
		List<Role> listRole = roleService.ListRole();
		Map map = new HashMap();
		map.put("listRole", listRole);
		ModelAndView a =new ModelAndView("/function/system-role-authorization", map);
		int flag=0;
		a.addObject("flag",flag);
		return a;
	}
}
