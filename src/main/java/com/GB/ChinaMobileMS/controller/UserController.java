package com.GB.ChinaMobileMS.controller;


import java.util.HashMap;
import java.util.List;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.JobEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.JobService;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private BranchService branchService;
	@Autowired
	private JobService JobService;
	
	//在Spring中生成set get方法 自动获取userService对象
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login(User user, HttpSession session){
		
		String password = user.getPassword();
		//ModeAndView Spring中的一个方便跳转类  spring 进行解析
		user = userService.login(user.getUserName(), user.getPassword());
		System.out.println("after "+user);

		
		if (user == null) {
			return new ModelAndView("forward:/").addObject("id", "user_null");
		} else if (!password.equals(user.getPassword())) {
			return new ModelAndView("forward:/").addObject("id", "psw_incorrect");
		}

		session.setAttribute("user", user);
		return new ModelAndView("redirect:/u/main");
	}
	
	@RequestMapping(value = "/deleteUser/{userName}" , method = RequestMethod.GET)
	public ModelAndView deleteUser( HttpSession session,@PathVariable("userName") String userName){
		System.out.println("DELETE userName = " + userName );
		
		if(userService.findByUserNamefromBranch(userName) != null){
			System.out.println("此人为某部门的头头");
		}
		else if(userService.findByUserNamefromCompany(userName)!= null)
				System.out.println("此人为某公司的头头");
		else{	
			System.out.println("此人为无名氏");
			userService.deleteUser(userName);
		}
			
		return  GetUserList();
	}

	//新增一个用户
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public ModelAndView addUser(User user){
		

		String string = userService.addUser(user);

		return  GetUserList();
	}
	
	/**
	 * 删除用户
	 * @Author Arron
	 */
	
	//跳转新增用户界面
	@RequestMapping(value="user-add")
	public ModelAndView useradd(){
		
		System.out.println("进入了User-add");
		List<CompanyEntity> listCompany = companyService.queryCompany();
		List<BranchEntity> listBranch = branchService.queryBranch();
		List<JobEntity> listJob = JobService.queryJob();
		
		Map map =new HashMap();
		map.put("listCompany",listCompany);
		map.put("listBranch", listBranch);
		map.put("listJob", listJob);
		
		System.out.println(listCompany);
		System.out.println(listBranch);
		System.out.println(listJob);
		
		return new ModelAndView("/function/system-user-add",map);
	}
			
	//修改用户信息
	@RequestMapping(value="/updateUserInfo" , method=RequestMethod.POST)
	public ModelAndView updateUserInfo(User user){
		
		System.out.println(user);
		
		int updateUserInfo = userService.updateUserInfo(user);
		
		return  GetUserList();
	}
	
	
//	登出
	@RequestMapping("/logout2")
	public ModelAndView logout(HttpSession session){
		System.out.println("退出成功");	
		session.invalidate();
		return new ModelAndView("redirect:/login.jsp");
	}

	
	@RequestMapping(value="/u/top", method=RequestMethod.GET)
	public ModelAndView top(){
//		User user=(User) session.getAttribute("user");
//		session.setAttribute("user", user);
		return new ModelAndView("top");
	}
	
	@RequestMapping(value="/u/left", method=RequestMethod.GET)
	public ModelAndView left(HttpSession session){
		return new ModelAndView("left");
	}
	@RequestMapping(value="/u/main", method=RequestMethod.GET)
	public ModelAndView main(HttpSession session){
		//if(session.getAttribute("user")!=null)
		return new ModelAndView("main");
		//return new ModelAndView("redirect:/login");
	}
	
	public  ModelAndView GetUserList()
	{
		List<User> listUser = userService.listUser();
				
		Map map =new HashMap();
		map.put("listUser",listUser);//userlist是个Arraylist之类的  

		return new ModelAndView("/function/system-user",map);

		
	}
}
