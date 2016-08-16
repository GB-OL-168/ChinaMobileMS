package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.User;

public interface UserMapper {
	//数据库接口
	User findByUserName(String userName);
	
	int insertUser(User user);
	
	List<User> listUser();
}
