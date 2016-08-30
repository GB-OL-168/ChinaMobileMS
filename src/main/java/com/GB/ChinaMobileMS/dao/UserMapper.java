package com.GB.ChinaMobileMS.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

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
	
	int updateIsExist(String userName);
	
	List<User> listUser();
	
	User queryUserByUserName(String userName);

	int updateUserRole(User user);
	 
	boolean deleteUser(String userName) throws DataAccessException;
}
