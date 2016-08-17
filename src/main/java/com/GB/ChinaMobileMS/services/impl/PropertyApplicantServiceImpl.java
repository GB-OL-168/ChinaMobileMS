package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.PropertyApplicantMapper;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.PropertyApplicantService;

@Service
public class PropertyApplicantServiceImpl implements PropertyApplicantService {
	//实现类
	@Autowired
	private PropertyApplicantMapper propertyApplicantMapper;
	//PropertyApplicantMapper映射接口，生成一个实现对象
	
	public User login(String userName, String password) {
		
		User user = propertyApplicantMapper.findByUserName(userName);
		//username是一个主键 可以获取user整个对象
//		if(user == null){
//			System.out.println("用户名错误或不存在");
//		}else if(!password.equals(user.getPassword())){
//			System.out.println("用户名或密码错误");
//		}
		return user;
	}

	public String addPropertyApplicant(User user) {
		System.out.println("进入了 addUser 方法");
		// TODO Auto-generated method stub
		int insertResult = propertyApplicantMapper.insertUser(user);
		System.out.println("insertResult = "  + insertResult);
		
		return null;
	}
	
	public List<User> listUser() {
		System.out.println("进入了 listUser 方法");
		// TODO Auto-generated method stub
		List<User> listUser = propertyApplicantMapper.listUser();
		System.out.println("listUser = "  + listUser);
		
		return listUser;
	}
	
}
