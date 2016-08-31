package com.GB.ChinaMobileMS.activiti_listener;

import java.io.Serializable;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;

import com.GB.ChinaMobileMS.controller.PropertyServiceController;

public class Vertify1Listener implements Serializable, TaskListener {
	
	private static final long serialVersionUID = 1L;

	/**
	 * 物业一审监听
	 */
	@Override
	public void notify(DelegateTask delegateTask) {
		System.out.println("\n\n=================\nUser1 task excute");
		System.out.println("STATUS = " + PropertyServiceController.STATUS);
		
		switch(PropertyServiceController.STATUS){
		case PropertyServiceController.SECOND_STAGE_START:	//通过
			System.out.println("Enter case SECOND_STAGE_START");
			//1.修改流程表状态
			PropertyServiceController.reviewService.modifyReviewStatus(PropertyServiceController.reviewID, PropertyServiceController.SECOND_STAGE_START, "二审阶段", "");
//			//2.设置二审人员
//			PropertyServiceController.reviewService.modifyReviewCompanyVertifyUser(PropertyServiceController.reviewID, PropertyServiceController.companyManagerID);
			//3.修改申请表状态
			PropertyServiceController.updatePropertyServices.setStatus(PropertyServiceController.propertyID, PropertyServiceController.SECOND_STAGE_START);
			break;
		case PropertyServiceController.FIRST_REJECT:	//拒绝
			System.out.println("Enter case FIRST_REJECT");
			//1.修改申请表状态
			PropertyServiceController.updatePropertyServices.setStatus(PropertyServiceController.propertyID, PropertyServiceController.FIRST_REJECT);
			//2.修改流程表状态
			PropertyServiceController.reviewService.modifyReviewStatus(PropertyServiceController.reviewID, PropertyServiceController.FIRST_REJECT, "一审拒绝", "");
			break;
		}
		System.out.println("===================\n\n");
	}

}
