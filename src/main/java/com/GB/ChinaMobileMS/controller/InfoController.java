package com.GB.ChinaMobileMS.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;








import com.GB.ChinaMobileMS.entity.Information;
import com.GB.ChinaMobileMS.services.interfaces.InfoService;

@Controller
public class InfoController {

	@Autowired
	private InfoService infoService;
	
	@RequestMapping(value="/updateInfo", method=RequestMethod.POST)
	public ModelAndView updateInfo(Information info, HttpSession session){
		Timestamp t = new Timestamp(System.currentTimeMillis()); 
		
		info.setTime(t);
		
		System.out.println("after "+info);
		int i =infoService.updateInfo(info);
		return GetInfo();
	}
	
	
	public ModelAndView GetInfo()
	{
		Information info = infoService.findbyInfoID();
		
		ModelAndView mac =new ModelAndView("/function/system-parameter");
		mac.addObject("topic",info.getTopic() );
		mac.addObject("time",info.getTime() );
		mac.addObject("content", info.getContent());
		mac.addObject("recomandRoleId", info.getRecomandRoleId());
		
		return mac;
	}
}
