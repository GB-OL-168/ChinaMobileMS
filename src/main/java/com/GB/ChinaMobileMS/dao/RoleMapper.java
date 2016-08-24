package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.Role;

public interface RoleMapper {
	List<Role> ListRole();
	
	int addRole(Role role);
	
	Role findRoleByName(String roleName);
	
	int updateRole(Role role);
	
	int deleteRoleByName(int roleId);
}
