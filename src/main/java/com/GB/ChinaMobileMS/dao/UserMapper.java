package com.GB.ChinaMobileMS.dao;

import com.GB.ChinaMobileMS.entity.User;

public interface UserMapper {
	//数据库接口
	User findByUserName(String userName);
}
