package com.GB.ChinaMobileMS.controller;

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
		// System.out.println("updateUserRole");
		// System.out.println("user:" + user);
		List<Role> listRole = roleService.ListRole();
		Iterator<Role> it = listRole.iterator();
		while (it.hasNext()) {
			Role tmp = it.next();
			if (user.getRoleName().equals(tmp.getRoleName())) {
				user.setRoleId(tmp.getRoleId());
				break;
			}
		}
		// System.out.println("End of set new role id");
		String str = userService.updateUserRole(user);
		return GetUserList2();
	}

	@RequestMapping(value = "/addRole", method = RequestMethod.GET)
	public ModelAndView addRole(Role role, HttpSession session) {
		System.out.println("addRole");
		System.out.println("Role:" + role);
		List<Role> listrole = roleService.ListRole();
		Iterator<Role> it = listrole.iterator();
		int flag = 0;
		while (it.hasNext()) {
			Role tmp = it.next();
			if (tmp.getRoleName().equals(role.getRoleName())) {
				flag = 1;
				break;
			}
		}
		if (flag == 0) {
			String str = roleService.addRole(role);
		} else {
			System.out.println("can't add new Role");
		}
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
		List<User> list = userService.listUser();
		Iterator<User> it = list.iterator();
		int flag = 0;
		while (it.hasNext()) {
			User tmp = it.next();
			if (tmp.getRoleId() == roleId) {
				flag = 1;
				break;
			}
		}
		if (flag == 1) {
			System.out.println("can't delete this Role");
		} else {
			String str = roleService.deleteRoleByName(roleId);
		}
		return GetRoleList();
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

	public ModelAndView GetRoleList() {
		List<Role> listRole = roleService.ListRole();
		Map map = new HashMap();
		map.put("listRole", listRole);
		return new ModelAndView("/function/system-role-authorization", map);
	}
}
