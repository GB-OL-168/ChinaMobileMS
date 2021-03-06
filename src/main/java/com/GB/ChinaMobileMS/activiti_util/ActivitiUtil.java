package com.GB.ChinaMobileMS.activiti_util;

import java.util.List;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.GB.ChinaMobileMS.services.interfaces.DinnerReviewService;
import com.GB.ChinaMobileMS.services.interfaces.ReviewService;

@Component
public class ActivitiUtil {

	@Autowired
	private RepositoryService repositoryService;

	@Autowired
	private RuntimeService runtimeService;

	@Autowired
	private TaskService taskService;

	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private DinnerReviewService dinnerReviewService;

	/**
	 * 部署流程图到服务器数据库，一个流程图只需部署一次
	 */
	public void deployDiagram() {
		repositoryService.createDeployment().addClasspathResource("act/MyProcess.bpmn").deploy();
	}

	/**
	 * 根据部署的流程开启一条申请，并把申请的流程ID存入数据库
	 * 
	 * @param propertyTableId
	 *            申请表ID
	 * @param branchVertifyUserID
	 *            一审人ID
	 * @param companyVertifyUserID
	 * 			    二审人ID
	 */
	@Transactional
	public boolean startProcess(int propertyTableId, String branchVertifyUserID, String companyVertifyUserID) {
		String excutionID = runtimeService.startProcessInstanceByKey("myProcess").getId();
		if (!startReviewInDB(propertyTableId, excutionID, branchVertifyUserID, companyVertifyUserID)) {
			System.out.println("开启审核失败");
			return false;
		}
		return true;
	}

	/**
	 * 对开启的申请流程进行审核操作
	 * 
	 * @param excutionID
	 *            申请流程的id
	 * @param isPass
	 *            该流程节点操作：通过/拒绝
	 */
	@Transactional
	public void excuteProcess(String excutionID, boolean isPass) {
		List<Task> tasks = taskService.createTaskQuery().executionId(excutionID).list();
		for (Task task : tasks) {
			taskService.setVariable(task.getId(), "flag", isPass);
			taskService.complete(task.getId());
		}
	}

	/**
	 * 开启一条审核记录
	 * 
	 * @param propertyTableId
	 *            申请表id
	 * @param excutionID
	 *            申请流程的id
	 * @param vertifyUserID
	 *            审核人ID
	 */
	private boolean startReviewInDB(int propertyTableId, String excutionID, String branchVertifyUserID, String companyVertifyUserID) {
		return reviewService.startReview(propertyTableId, excutionID, branchVertifyUserID, companyVertifyUserID);
	}
	
//===============================用餐部分
	
	/**
	 * 根据部署的流程开启一条申请，并把申请的流程ID存入数据库
	 * @param dinnerPropertyTableId	用餐申请表ID
	 * @param branchVertifyUserID	一审人ID
	 * @param companyVertifyUserID	二审人ID
	 * @return
	 */
	@Transactional
	public boolean startDinnerProcess(int dinnerPropertyTableId, String branchVertifyUserID, String companyVertifyUserID) {
		String excutionID = runtimeService.startProcessInstanceByKey("dinnerProcess").getId();
		if (!startDinnerReviewInDB(dinnerPropertyTableId, excutionID, branchVertifyUserID, companyVertifyUserID)) {
			System.out.println("开启用餐审核失败");
			return false;
		}
		return true;
	}
	
	/**
	 * 执行一条流程
	 * @param excutionID	流程ID
	 * @param isPass		是否通过
	 */
	@Transactional
	public void excuteDinnerProcess(String excutionID, boolean isPass) {
		List<Task> tasks = taskService.createTaskQuery().executionId(excutionID).list();
		for (Task task : tasks) {
			taskService.setVariable(task.getId(), "flag", isPass);
			taskService.complete(task.getId());
		}
	}
	
	/**
	 * 新增一条审核记录
	 * @param propertyTableId		申请表ID
	 * @param excutionID			流程ID
	 * @param branchVertifyUserID	一身人ID
	 * @param companyVertifyUserID	二审人ID
	 * @return	boolean：true 新增成功  false：新增失败
	 */
	private boolean startDinnerReviewInDB(int propertyTableId, String excutionID, String branchVertifyUserID, String companyVertifyUserID) {
		return dinnerReviewService.startDinnerReview(propertyTableId, excutionID, branchVertifyUserID, companyVertifyUserID);
	}
}
