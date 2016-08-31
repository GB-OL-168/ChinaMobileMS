package com.GB.ChinaMobileMS.activiti_listener;

import java.io.Serializable;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;

import com.GB.ChinaMobileMS.controller.DinnerServiceController;
import com.GB.ChinaMobileMS.controller.PropertyServiceController;

public class StartDinnerVertifyLintener implements Serializable, TaskListener{

	private static final long serialVersionUID = 1L;

	/**
	 * 用餐开启流程监听
	 */
	@Override
	public void notify(DelegateTask delegateTask) {
		switch(DinnerServiceController.STATUS){
		case DinnerServiceController.FIRST_STAGE_START:	//通过
			System.out.println("Enter case FIRST_STAGE_START");
			//1.修改流程表状态
			DinnerServiceController.dinnerReviewService.modifyDinnerReviewStatus(DinnerServiceController.dinnerReviewID, DinnerServiceController.FIRST_STAGE_START, "一审阶段");
			//2.修改申请表状态
			DinnerServiceController.dinnerPropertyService.setDinnerTableStatus(DinnerServiceController.dinnerPropertyID, DinnerServiceController.FIRST_STAGE_START);
			break;
		case DinnerServiceController.REJECT_HANDLE:	//拒绝
			System.out.println("Enter case REJECT_HANDLE");
			//1.修改申请表状态
			DinnerServiceController.dinnerPropertyService.setDinnerTableStatus(DinnerServiceController.dinnerPropertyID, DinnerServiceController.REJECT_HANDLE);
			//2.修改流程表状态
			DinnerServiceController.dinnerReviewService.modifyDinnerReviewStatus(DinnerServiceController.dinnerReviewID, DinnerServiceController.REJECT_HANDLE, "拒绝受理");
			break;
		}
	}

}
