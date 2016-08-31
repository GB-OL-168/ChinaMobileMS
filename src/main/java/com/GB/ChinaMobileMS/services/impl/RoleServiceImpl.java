package com.GB.ChinaMobileMS.services.impl;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.RoleMapper;
import com.GB.ChinaMobileMS.dao.UserMapper;
import com.GB.ChinaMobileMS.entity.Role;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private UserMapper userMapper;

	public List<Role> ListRole() {
		List<Role> listRole = roleMapper.ListRole();
		return listRole;
	}

	public int addRole(Role role)
	{
		List<Role> listrole = roleMapper.ListRole();
		Iterator<Role> it = listrole.iterator();
		int flag = 0;
		while (it.hasNext()) {
			Role tmp = it.next();
			if (tmp.getRoleName().equals(role.getRoleName())) {
				flag = 1;
				break;
			}
		}
		if(flag ==1)
		{int add = roleMapper.addRole(role);}

		
		
		return flag;
	}

	public Role findRoleByName(String roleName) {
		System.out.println("Enter findRoleByName");

		Role role = roleMapper.findRoleByName(roleName);

		return role;
	}

	public String updateRole(Role role) {
		System.out.println("Enter updateRole");

		int update = roleMapper.updateRole(role);

		return "done";
	}

	public int deleteRoleByName(int roleId) {
		System.out.println("Enter deleteRoleByName");
		
		List<User> list = userMapper.listUser();
		Iterator<User> it = list.iterator();
		int flag = 0;
		while (it.hasNext()) {
			User tmp = it.next();
			if (tmp.getRoleId() == roleId) {
				flag = 1;
				break;
			}
		}
		if(flag==0)
		{int del = roleMapper.deleteRoleByName(roleId);}

		return flag;
	}

	public Role findRoleById(int roleId) {
		System.out.println("Enter findRoleById");

		Role role = roleMapper.findRoleById(roleId);

		return role;
	}

}
