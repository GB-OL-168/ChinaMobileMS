package com.GB.ChinaMobileMS.controller;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;
import com.GB.ChinaMobileMS.entity.InvestigationItemsEntityModel;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntitySet;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntitySet;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationItemsService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationScoreService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableSetService;
import com.GB.ChinaMobileMS.services.interfaces.WaitForInvestigationService;

@Controller
public class InvestigationTableController {
	@Autowired
	private InvestigationTableService investigationTableService;
	@Autowired
	private WaitForInvestigationService waitForInvestigationService;
	@Autowired
	private InvestigationItemsService investigationItemsService;
	@Autowired
	private InvestigationScoreService investigationScoreService;
	@Autowired
	private InvestigationTableSetService investigationTableSetService;
		
		
		/**
		 * 填写界面跳转
		 * @param session
		 * @return modle 跳到填写界面
		 * @throws Exception
		 */
		@RequestMapping(value="/service/management-write",method = RequestMethod.GET)
		public ModelAndView showWriteTable(HttpSession session) throws Exception{
			User sessionUser = (User)session.getAttribute("user");
			
			ModelAndView model = new ModelAndView();
			String nowTime =formatTime();//获取当前时间
			//查询要填写的调查表
			List<WaitForInvestigationUserEntity> waitForInvestigationUserEntityList=waitForInvestigationService.findWaitByUserName(sessionUser.getUserName());
			
			//获得调查表显示的数据
			List<InvestigationTableEntitySet> investigationTableEntitySetList = investigationTableSetService.getInvestigationTableEntitySetList(nowTime, waitForInvestigationUserEntityList);
	
			model.addObject("investigationTableEntitySetList",investigationTableEntitySetList);
			model.setViewName("/function/service-management-write");
			return model;
		}
		
		/**
		 * 
		 * 表格管理界面
		 * @param session
		 * @return model 跳到表格管理界面
		 */
		@RequestMapping (value = "/service/management-check", method = RequestMethod.GET)
		public ModelAndView showManageTable(HttpSession session){
			User sessionUser = (User)session.getAttribute("user");
			List<InvestigationTableEntity> investigationTableEntityList = investigationTableService.getInvestigationTableEntityByUserName(sessionUser.getUserName());
			ModelAndView model = new ModelAndView();
			model.addObject("investigationTableEntityList",investigationTableEntityList);
			model.setViewName("/function/service-management-check");
			return model;
		}
	
		//跳转到到新建考评表页面
		@RequestMapping(value = "/service/management-table-make", method = RequestMethod.GET)
		public ModelAndView showTableMake( HttpSession session)  {
			
			return new ModelAndView("/function/service-management-table-make");
		
	}
	
		/**
		 * 新建考评表功能
		 * @param model 获得每一行的值
		 * @param httpSession
		 * @param request 
		 * @return model 返回表格管理界面
		 */
		@Transactional
		@RequestMapping(value = "/createInvestigationTable", method = RequestMethod.POST)
		public ModelAndView createInvestigationTable(InvestigationItemsEntityModel model, HttpSession httpSession,
				HttpServletRequest request) {
			User sessionUser = (User) httpSession.getAttribute("user");
			String userName = sessionUser.getUserName();
			//获得表格的名称
			String investigationName = request.getParameter("investigationItmeName");
			//调用插入考评项方法
			System.out.println("555555555555"+ model.size());
			investigationItemsService.inserItems(model.getInvestigationItemsEntityList(),userName,investigationName);
			List<InvestigationTableEntity> investigationTableEntityList = investigationTableService
					.getInvestigationTableEntityByUserName(sessionUser.getUserName());
			Map<String, List<InvestigationTableEntity>> map = new HashMap<String, List<InvestigationTableEntity>>();
			map.put("investigationTableEntityList", investigationTableEntityList);
			return new ModelAndView("/function/service-management-check", map);
		}
		
		/**
		 * 查看考评项目
		 * @param id 查询的表的id
		 * @param session
		 * @return model 跳到查看表格信息
		 */
		@RequestMapping(value = "/showInvestigationItem/{id}", method = RequestMethod.GET)
		public ModelAndView showInvestigationItem(@PathVariable("id") int id, HttpSession session) {
			List<InvestigationItemsEntity> investigationItemsEntityList = investigationItemsService.getInvestigationItems(id);
			String investigationName;
			if(investigationItemsEntityList.isEmpty()||investigationItemsEntityList==null)
				 investigationName="未发现任何项目";
			else
			investigationName = investigationItemsEntityList.get(0).getInvestigationItemName();
			ModelAndView model = new ModelAndView();
			model.addObject("investigationName",investigationName);
			model.addObject("investigationItemsEntityList",investigationItemsEntityList);
			model.setViewName("/function/service-table-info");
			return model;
		}
		
		/**
		 * 删除表格功能
		 * @param investigationId 
		 * @return flag 是否成功删除
		 */
		@Transactional
		@RequestMapping(value = "/service/delete",method = RequestMethod.POST)
		public @ResponseBody boolean delete(int investigationId){
			boolean flag = false;
			List<InvestigationItemsEntity> investigationItemsEntityList = investigationItemsService.getInvestigationItems(investigationId);
			for(int i=0;i<investigationItemsEntityList.size();i++){
				investigationScoreService.deleteScoreByInvestigationItemId(investigationItemsEntityList.get(i).getInvestigationItemId());
			}
			investigationItemsService.deleteInvestigationItemsByInvestigationId(investigationId);
			waitForInvestigationService.deleteWaitForInvestigationUserByInvestigationId(investigationId);
			flag = investigationTableService.deleteInvestiationTableById(investigationId);
			return flag;
		}
		

	/**
	 * 统计功能
	 * @param id 
	 * @param httpSession
	 * @return model 跳到统计功能界面 
	 */
		@RequestMapping(value="/statistics/{id}",method = RequestMethod.GET)
		public ModelAndView statistics(@PathVariable("id") int id,HttpSession httpSession){
			ModelAndView model = new ModelAndView();
			//获得统计后的结果
			List<InvestigationScoreEntitySet> investigationScoreEntitySetList = investigationItemsService.getStatistics(id);

			model.addObject("investigationScoreEntitySetList", investigationScoreEntitySetList);
			model.setViewName("function/service-date-statistics");
			return model;
		}
		
	
	//获取当前日期
	private String formatTime(){
		Date dt=new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String nowTime = df.format(dt);
		return nowTime; 
	}

}
