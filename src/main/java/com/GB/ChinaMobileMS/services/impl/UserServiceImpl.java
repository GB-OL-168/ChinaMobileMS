package com.GB.ChinaMobileMS.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.UserMapper;
import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Service
public class UserServiceImpl implements UserService {
	//实现类
	@Autowired
	private UserMapper userMapper;
	//UserMapper映射接口，生成一个实现对象
	
	public User login(String userName) {
		
		return userMapper.findByUserName(userName);
	}

	public int addUser(User user) {
		// TODO Auto-generated method stub
		
		
		return userMapper.insertUser(user);
	}
	
	public List<User> listUser() {
		// TODO Auto-generated method stub
		List<User> listUser = userMapper.listUser();
		
		return listUser;
	}

	@Override
	public User getUserByUserName(String userName) {
		return userMapper.queryUserByUserName(userName);
	}
	
	public String updateUserRole(User user){
		System.out.println("进入了 updateUserRole 方法");
		int updateUserRole= userMapper.updateUserRole(user);
		
		return null;
	}

	@Override
	public boolean deleteUser(String userName) throws DataAccessException{
		/**
		 * @Arron
		 *
		 */
		
		
		System.out.println("userDelete = "+userMapper.deleteUser(userName));
		
		return false;
	}

	@Override
	public BranchEntity findByUserNamefromBranch(String userName) {
		// TODO Auto-generated method stub
		
		//User user = userMapper.findByUserName(userName);
		
		return userMapper.findByUserNamefromBranch(userName);
	}

	@Override
	public CompanyEntity findByUserNamefromCompany(String userName) {
		// TODO Auto-generated method stub
		return userMapper.findByUserNamefromCompany(userName);
	}

	@Override
	public int updateUserInfo(User user) {
		// TODO Auto-generated method stub
		
		return userMapper.updateUserInfo(user);
	}

	@Override
	public int updateIsExist(String userName) {
		// TODO Auto-generated method stub
		return userMapper.updateIsExist(userName);
	}
	
}
