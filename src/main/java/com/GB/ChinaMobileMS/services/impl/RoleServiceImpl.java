package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.RoleMapper;
import com.GB.ChinaMobileMS.entity.Role;
import com.GB.ChinaMobileMS.services.interfaces.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleMapper roleMapper;
	
	public List<Role> ListRole()
	{
		List<Role> listRole = roleMapper.ListRole();
		return listRole;
	}
	
	public String addRole(Role role)
	{
		System.out.println("Enter addRole");
		
		int add = roleMapper.addRole(role);
		
		
		return "done";
	}
	
	public Role findRoleByName(String roleName)
	{
		System.out.println("Enter findRoleByName");
		
		Role role = roleMapper.findRoleByName(roleName);
		
		return role;
	}
	
	public String updateRole(Role role)
	{
		System.out.println("Enter updateRole");
		
		int update = roleMapper.updateRole(role);
		
		return "done";
	}
	
	public String deleteRoleByName(int roleId){
		System.out.println("Enter deleteRoleByName");
		
		int del = roleMapper.deleteRoleByName(roleId);
		
		return "Deleted";
	}
	
	public Role findRoleById(int roleId){
		System.out.println("Enter findRoleById");
		
		Role role = roleMapper.findRoleById(roleId);
		
		return role;
	}

}
