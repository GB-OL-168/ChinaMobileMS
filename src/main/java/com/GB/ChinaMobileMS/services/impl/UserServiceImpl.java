package com.GB.ChinaMobileMS.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.UserMapper;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	public User login(String userName, String password) {
		
		User user = userMapper.findByUserName(userName);
		
		if(user == null){
			System.out.println("用户名错误或不存在");
		}else if(!password.equals(user.getPassword())){
			System.out.println("用户名或密码错误");
		}
		return user;
	}

}
