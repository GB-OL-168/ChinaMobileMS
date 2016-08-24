package com.GB.ChinaMobileMS.services.interfaces;

import java.util.List;

import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.User;

public interface UserService {
	User login(String userName, String password);
	
	/**
	 * @Arron
	 *添加用户
	 */
	String addUser(User user);
	
	int updateUserInfo(User user);
	
	String updateUserRole(User user);
	
	BranchEntity findByUserNamefromBranch(String userName);
	
	CompanyEntity findByUserNamefromCompany(String userName);
	
	boolean deleteUser(String userName);
	
	List<User> listUser();
}
