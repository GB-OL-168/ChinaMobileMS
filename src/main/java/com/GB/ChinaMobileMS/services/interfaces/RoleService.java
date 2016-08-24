package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.Role;

public interface RoleService {
	List<Role> ListRole();
	
	String addRole(Role role);
	
	Role findRoleByName(String roleName);
	
	String updateRole(Role role);
	
	String deleteRoleByName(int roleId);
}
