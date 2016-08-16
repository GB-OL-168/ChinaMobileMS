package com.GB.ChinaMobileMS.dao;

import java.util.List;

import com.GB.ChinaMobileMS.entity.User;

public interface UserMapper {
	
	User findByUserName(String userName);
	
	int insertUser(User user);
	
	List<User> listUser();
}
