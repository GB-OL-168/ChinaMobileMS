package com.GB.ChinaMobileMS.dao;

import com.GB.ChinaMobileMS.entity.User;

public interface UserMapper {
	
	User findByUserName(String userName);
}
