package com.GB.ChinaMobileMS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CompanyQuery {
	@RequestMapping(value = "/companyquery/{id}", method = RequestMethod.GET)
	public ModelAndView CompanyQuery(@PathVariable("id") String id) {
		if (id.equals("houses"))
			return new ModelAndView("/function/company-query-houses");
		else if(id.equals("detailed_information"))
			return new ModelAndView("/function/company-query-houses-detailed_information");
		else if(id.equals("rooms"))
			return new ModelAndView("/function/company-query-rooms");
		else if(id.equals("furniture"))
			return new ModelAndView("/function/company-query-furniture");
		else if(id.equals("lease"))
			return new ModelAndView("/function/company-query-lease");
		
		else
			return new ModelAndView("forward:/");
	}
}