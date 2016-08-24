package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.User;

public interface UserMapper {
	//数据库接口
	User findByUserName(String userName);
	
	BranchEntity findByUserNamefromBranch(String userName);
	
	CompanyEntity findByUserNamefromCompany(String userName);
	
	int insertUser(User user);
	
	int updateUserInfo(User user);
	
	List<User> listUser();
	
	int updateUserRole(User user);
	
	boolean deleteUser(String userName);
}
