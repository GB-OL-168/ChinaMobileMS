package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.encrypt.Encode;
import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.Information;
import com.GB.ChinaMobileMS.entity.JobEntity;
import com.GB.ChinaMobileMS.entity.Role;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.InfoService;
import com.GB.ChinaMobileMS.services.interfaces.JobService;
import com.GB.ChinaMobileMS.services.interfaces.RoleService;
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
	@Autowired
	private InfoService infoService;
	@Autowired
	private RoleService roleService;

	// 在Spring中生成set get方法 自动获取userService对象
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(User user, HttpSession session) {

		System.out.println("进入了 Login controller");
		
		String inputpassword = user.getPassword();
		// ModeAndView Spring中的一个方便跳转类 spring 进行解析

		user = userService.login(user.getUserName());

		// 用户不存在
		if (user == null) {
			// 用户不存在
			return new ModelAndView("forward:/").addObject("id", "user_null");
		} else if (user.getIsExist() == -1) {
			// 用户不存在
			return new ModelAndView("forward:/").addObject("id", "user_null");
		} else if (!checkPsw(inputpassword, user.getPassword(), user.getSalt())) {
			// 密码错误
			return new ModelAndView("forward:/").addObject("id", "psw_incorrect");
		} else if (user.getRoleId() == 0 ) {
			// 该用户尚未分配角色
			return new ModelAndView("forward:/").addObject("id", "role_null");
		}

		// 读取最新的公告信息
		Information info = infoService.findbyInfoID();
		// 将公告与用户信息放入session
		session.setAttribute("user", user);
		session.setAttribute("info", info.getContent());

		//将用户权限读入session
		Map<String, Object> map = new HashMap<>();
		
		try{
		Role role = roleService.findRoleById(user.getRoleId());
		System.out.println("role=" + role);
		
		map.put("r", role);
		session.setAttribute("sysAccountManage", role.getSysAccountManage());
		session.setAttribute("sysPrivilegeSetting", role.getSysPrivilegeSetting());
		session.setAttribute("sysParameterSetting", role.getSysParameterSetting());
		session.setAttribute("sysDataRestore", role.getSysDataRestore());
		session.setAttribute("serverApplicationDinner", role.getServerApplicationDinner());
		session.setAttribute("serverApplicationProperty", role.getServerApplicationProperty());
		session.setAttribute("auditingApplicationDinner", role.getAuditingApplicationDinner());
		session.setAttribute("auditingApplicationProperty", role.getAuditingApplicationProperty());
		session.setAttribute("managementApplicationDinner", role.getManagementApplicationDinner());
		session.setAttribute("managementApplicationProperty", role.getManagementApplicationProperty());
		session.setAttribute("queryVehicle", role.getQueryVehicle());
		session.setAttribute("queryAsset", role.getQueryAsset());
		session.setAttribute("registerVehicle", role.getRegisterVehicle());
		session.setAttribute("registerAsset", role.getRegisterAsset());
		session.setAttribute("mangaementAsset", role.getMangaementAsset());
		session.setAttribute("evaluationFillProperty", role.getEvaluationFillProperty());
		session.setAttribute("evaluationMangaementProperty", role.getEvaluationMangaementProperty());

		return new ModelAndView("redirect:/u/main", map);
		}
		catch(DataAccessException e){
			System.out.println("用户权限读取错误");
		}
		return new ModelAndView("redirect:/u/main");
	}

	// 密码校验函数
	private boolean checkPsw(String psw1, String psw2, String salt) {
		System.out.println("psw = " + psw1);
		StringBuffer firstpsw;
		firstpsw = new StringBuffer(psw1);
		try {
			// 加盐
			firstpsw.append(salt);
			// 二次加密
			String second = Encode.md5Encode(firstpsw.toString());
			System.out.println("second = " + second);
			if (second.equals(psw2))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// 删除用户
	@RequestMapping(value = "/deleteUser/{userName}", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpSession session, @PathVariable("userName") String userName) {
		if (userService.findByUserNamefromBranch(userName) != null) {
			System.out.println("此人为某部门的头头");
			return GetUserList().addObject("infomation", "此用户为某个部门的管理员，请更改后再删除");
		} else if (userService.findByUserNamefromCompany(userName) != null) {
			System.out.println("此人为某公司的头头");
			return GetUserList().addObject("infomation", "此用户为某个公司的管理员，请更改后再删除");
		} else {
			System.out.println("此人为无名氏");
			try {
				userService.deleteUser(userName);
			} catch (DataAccessException e) {
				userService.updateIsExist(userName);
				System.out.println("捕获到了异常");
			}
		}

		return GetUserList().addObject("infomation", "删除成功");
	}

	//用户密码加密函数
	private User changePSW(User user){
			//定义一个 随机数 范围为5-25
			Random ne = new Random();
			int random = ne.nextInt(20) + 5;
			//定义盐
			String salt = Encode.getRandomString(random);
			user.setSalt(salt);
			//前端传入用户加密后密码
			StringBuffer firstPsw = new StringBuffer(user.getPassword());
			//加点盐
			firstPsw.append(salt);
			try {
				//密码二次加密
				String secondPSW = Encode.md5Encode(firstPsw.toString());
				user.setPassword(secondPSW);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return user;
	}
	
	// 新增一个用户
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ModelAndView addUser(User user) {
		
		try{
			// 调用service 插入数据库
			user = changePSW(user);
			userService.addUser(user);
		} catch (DuplicateKeyException e) {
			System.out.println("用户已存在");
			System.out.println(user);
			return GetUserList().addObject("infomation", "用户已存在");
		}
		System.out.println(user);
		return GetUserList().addObject("infomation", "新增成功");
	}

	// 新增用户界面
	@RequestMapping(value = "user-add")
	public ModelAndView useradd() {

		System.out.println("进入了User-add");
		List<CompanyEntity> listCompany = companyService.queryCompany();
		List<BranchEntity> listBranch = branchService.queryBranch();
		List<JobEntity> listJob = JobService.queryJob();

		Map<String, Object> map = new HashMap<>();
		map.put("listCompany", listCompany);
		map.put("listBranch", listBranch);
		map.put("listJob", listJob);

		System.out.println(listCompany);
		System.out.println(listBranch);
		System.out.println(listJob);

		return new ModelAndView("/function/system-user-add", map);
	}

	// 修改用户信息
	@RequestMapping(value = "/updateUserInfo", method = RequestMethod.POST)
	public ModelAndView updateUserInfo(User user) {
		
		try {
			user = changePSW(user);
			userService.updateUserInfo(user);
			System.out.println(user);
			System.out.println("用户资料更新成功");
		}catch (DuplicateKeyException e) {
			System.out.println("用户密码更新错误");
		}
		
		return GetUserList().addObject("infomation", "修改成功");
	}

	// 通用返回UserList方法
	public ModelAndView GetUserList() {
		List<User> listUser = userService.listUser();
		Map<String, Object> map = new HashMap<>();
		map.put("listUser", listUser);// userlist是个Arraylist之类的
		return new ModelAndView("/function/system-user", map);
	}
	
	// 登出
	@RequestMapping("/logout2")
	public ModelAndView logout(HttpSession session) {
		System.out.println("退出成功");
		session.invalidate();
		return new ModelAndView("redirect:/login.jsp");
	}

	@RequestMapping(value = "/u/top", method = RequestMethod.GET)
	public ModelAndView top() {
		return new ModelAndView("top");
	}

	@RequestMapping(value = "/u/left", method = RequestMethod.GET)
	public ModelAndView left(HttpSession session) {
		return new ModelAndView("left");
	}

	@RequestMapping(value = "/u/main", method = RequestMethod.GET)
	public ModelAndView main(HttpSession session) {
		return new ModelAndView("main");
	}
}
