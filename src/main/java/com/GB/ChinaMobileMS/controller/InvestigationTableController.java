//package com.GB.ChinaMobileMS.controller;
//
//import java.util.List;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
//import com.GB.ChinaMobileMS.entity.User;
//import com.GB.ChinaMobileMS.services.interfaces.InvestigationItmesService;
//import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
//
//@Controller
//public class InvestigationTableController {
//	@Autowired
//	private InvestigationTableService investigationTableService;
//	@Autowired
//	private InvestigationItmesService investigationItemsSerice;
//	@RequestMapping(value="/serviceTableInfo",method = RequestMethod.POST )
//	public  ModelAndView findInvestigationItems(HttpSession session){
//		User sessionUser = (User)session.getAttribute("user");
//		List<InvestigationTableEntity> InvestigationTableentity =investigationTableService.getInvestigationTableEntityByUserName(sessionUser.getUserName());
//		
//		return new ModelAndView();
//	}
//}
