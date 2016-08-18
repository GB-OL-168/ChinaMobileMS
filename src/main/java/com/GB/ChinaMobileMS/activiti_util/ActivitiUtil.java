package com.GB.ChinaMobileMS.activiti_util;

import java.util.List;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;

import com.GB.ChinaMobileMS.dao.ReviewMapper;
import com.GB.ChinaMobileMS.entity.ReviewEntity;
import com.GB.ChinaMobileMS.services.interfaces.ReviewService;

@ContextConfiguration(locations = { "classpath:spring-context.xml" })
public class ActivitiUtil {

	@Autowired
	private RepositoryService repositoryService;

	@Autowired
	private RuntimeService runtimeService;

	@Autowired
	private TaskService taskService;

	@Autowired
	private ReviewService reviewService;

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
	 * @param vertifyUserID
	 *            审核人ID
	 */
	public void startProcess(int propertyTableId, String vertifyUserID) {
		String excutionID = runtimeService.startProcessInstanceByKey("myProcess").getId();
		if (!startReviewInDB(propertyTableId, excutionID, vertifyUserID)) {
			System.out.println("开启审核失败");
		}
	}

	/**
	 * 对开启的申请流程进行审核操作
	 * 
	 * @param excutionID
	 *            申请流程的id
	 * @param isPass
	 *            该流程节点操作：通过/拒绝
	 */
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
	private boolean startReviewInDB(int propertyTableId, String excutionID, String vertifyUserID) {
		return reviewService.startReview(propertyTableId, excutionID, vertifyUserID);
	}

}
