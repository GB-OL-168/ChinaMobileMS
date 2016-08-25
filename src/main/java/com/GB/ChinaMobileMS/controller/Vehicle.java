package com.GB.ChinaMobileMS.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Vehicle {
	@RequestMapping(value="/vehicle/{id}", method=RequestMethod.GET)
	public ModelAndView login(@PathVariable("id") String id,HttpSession session){
		if(id.equals("info-add"))
			return new ModelAndView("/function/vehicle-info-add");
		else if(id.equals("info-find"))
			return new ModelAndView("/function/vehicle-info-find");
		else if(id.equals("person-add"))
			return new ModelAndView("/function/vehicle-person-add");
		else if(id.equals("person-find"))
			return new ModelAndView("/function/vehicle-person-find");
		else
			return new ModelAndView("forward:/");
	}
}
