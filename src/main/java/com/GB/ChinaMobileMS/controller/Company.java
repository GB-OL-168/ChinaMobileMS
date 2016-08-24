package com.GB.ChinaMobileMS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Company {

	@RequestMapping(value = "/company/{id}", method = RequestMethod.GET)
	public ModelAndView CompanyQuery(@PathVariable("id") String id) {
		if (id.equals("query"))
			return new ModelAndView("/function/company-query-houses");
		else if (id.equals("info"))
			return new ModelAndView("/function/company-info-using");
		else if(id.equals("count"))
			return new ModelAndView("/function/company-count");
		else
			return new ModelAndView("forward:/");
	}

}
