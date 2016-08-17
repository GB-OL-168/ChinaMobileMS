package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.User;

public interface PropertyApplicantService {
	User login(String userName, String password);
	
	/**
	 * @Arron
	 *添加用户
	 */
	String addPropertyApplicant(User user);
	
	List<User> listUser();
}
