package com.GB.ChinaMobileMS.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.GB.ChinaMobileMS.entity.PropertyServiceEntity;
@Controller
public class PropertyServiceController {

	
	@RequestMapping(value="/property/propertyService/{id}", method=RequestMethod.GET)
	public void show(@PathVariable("id") String id, HttpSession session){
		System.out.println("hhh");
		System.out.println("enter /propertyService;id = " + id);
	}
}
