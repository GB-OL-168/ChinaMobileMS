package com.GB.ChinaMobileMS.activiti_listener;

import java.io.Serializable;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;

import com.GB.ChinaMobileMS.controller.DinnerServiceController;
import com.GB.ChinaMobileMS.controller.PropertyServiceController;

public class DinnerVertify1Listener implements Serializable, TaskListener{

	private static final long serialVersionUID = 1L;

	/**
	 * 用餐一审监听
	 */
	@Override
	public void notify(DelegateTask delegateTask) {
		switch(DinnerServiceController.STATUS){
		case DinnerServiceController.SECOND_STAGE_START:	//通过
			System.out.println("Enter case SECOND_STAGE_START");
			//1.修改流程表状态
			DinnerServiceController.dinnerReviewService.modifyDinnerReviewStatus(DinnerServiceController.dinnerReviewID, DinnerServiceController.SECOND_STAGE_START, "二审阶段");
			//3.修改申请表状态
			DinnerServiceController.dinnerPropertyService.setDinnerTableStatus(DinnerServiceController.dinnerPropertyID, DinnerServiceController.SECOND_STAGE_START);
			break;
		case DinnerServiceController.FIRST_REJECT:	//拒绝
			System.out.println("Enter case FIRST_REJECT");
			//1.修改申请表状态
			DinnerServiceController.dinnerPropertyService.setDinnerTableStatus(DinnerServiceController.dinnerPropertyID, DinnerServiceController.FIRST_REJECT);
			//2.修改流程表状态
			DinnerServiceController.dinnerReviewService.modifyDinnerReviewStatus(DinnerServiceController.dinnerReviewID, DinnerServiceController.FIRST_REJECT, "一审拒绝");
			break;
		}
	}

}
