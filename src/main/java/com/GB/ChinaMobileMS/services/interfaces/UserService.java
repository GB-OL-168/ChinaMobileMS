package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.User;

public interface UserService {
	User login(String userName, String password);
	
	/**
	 * @Arron
	 *添加用户
	 */
	String addUser(User user);
	
	String updateUserRole(User user);
	
	List<User> listUser();
}
