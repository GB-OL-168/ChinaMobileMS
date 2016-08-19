package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.PropertyServices;
@Controller
public class PropertyServiceController {

	@Autowired
	private PropertyServices updatePropertyServices;
	
	@RequestMapping(value="/property/propertyService/{id}/{status}", method=RequestMethod.GET)
	public ModelAndView propertyService(@PathVariable("id") int id, @PathVariable("status") int status,HttpSession session){
		System.out.println("hhh");
		System.out.println("enter /propertyService;id = " + id+"status"+status);
//		List<PropertyServiceEntity> property=updatePropertyServices.auditParty();
		
		boolean flag;
		flag=updatePropertyServices.setStatus(id, status);
		System.out.println(flag);
		List<PropertyServiceEntity> propertyServiceList=updatePropertyServices.getPropertyTableByVertifyUser(((User)session.getAttribute("user")).getUserName());
		Map newmap=new HashMap();
		newmap.put("propertyServiceList", propertyServiceList);
		return new ModelAndView("/function/property-auditing",newmap);	
		
	}
}
