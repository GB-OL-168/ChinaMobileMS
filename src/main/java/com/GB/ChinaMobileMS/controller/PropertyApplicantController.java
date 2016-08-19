package com.GB.ChinaMobileMS.controller;

import java.sql.Timestamp;
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

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.PropertyApplicantService;

@Controller
public class PropertyApplicantController {	
	
	@Autowired
	private PropertyApplicantService propertyApplicantService;
	//在Spring中生成set get方法 自动获取userService对象
	

	@RequestMapping(value="/addPropertyApplicant", method=RequestMethod.POST)
	public ModelAndView addPropertyApplicant(PropertyServiceEntity propertyApplicant, HttpSession httpSession){
		User sessionUser = (User)httpSession.getAttribute("user");
		if(sessionUser.getUserName()!=null)
	
		System.out.println("sessionUser = "+sessionUser.getUserName()+"/n");
		
		
        String applyUserName = sessionUser.getUserName();
        propertyApplicant.setApplyUserName(applyUserName);
		
		Timestamp time = new Timestamp(System.currentTimeMillis()); 
		propertyApplicant.setApplyTime(time);

		String string = propertyApplicantService.addPropertyApplicant(propertyApplicant);
		
		List<PropertyServiceEntity> listPropertyApplicant = propertyApplicantService.listPropertyApplicant();
		Map map =new HashMap();
		map.put("listPropertyApplicant",listPropertyApplicant);
		return new ModelAndView("/function/property-server",map);
	}
	
}
