package com.GB.ChinaMobileMS.activiti_listener;

import java.io.Serializable;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.springframework.transaction.annotation.Transactional;

import com.GB.ChinaMobileMS.controller.PropertyServiceController;

public class StartVertifyListener implements Serializable, TaskListener {

	private static final long serialVersionUID = 1L;
	
	/**
	 * 物业开启流程监听
	 */
	@Transactional
	@Override
	public void notify(DelegateTask delegateTask) {
		switch(PropertyServiceController.STATUS){
		case PropertyServiceController.FIRST_STAGE_START:	//通过
			System.out.println("Enter case FIRST_STAGE_START");
			//1.修改流程表状态
			PropertyServiceController.reviewService.modifyReviewStatus(PropertyServiceController.reviewID, PropertyServiceController.FIRST_STAGE_START, "一审阶段", "");
			//2.修改申请表状态
			PropertyServiceController.updatePropertyServices.setStatus(PropertyServiceController.propertyID, PropertyServiceController.FIRST_STAGE_START);
			break;
		case PropertyServiceController.REJECT_HANDLE:	//拒绝
			System.out.println("Enter case REJECT_HANDLE");
			//1.修改申请表状态
			PropertyServiceController.updatePropertyServices.setStatus(PropertyServiceController.propertyID, PropertyServiceController.REJECT_HANDLE);
			//2.修改流程表状态
			PropertyServiceController.reviewService.modifyReviewStatus(PropertyServiceController.reviewID, PropertyServiceController.REJECT_HANDLE, "拒绝受理", "");
			break;
		}
	}

}
