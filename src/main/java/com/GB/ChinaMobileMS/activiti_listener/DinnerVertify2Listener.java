package com.GB.ChinaMobileMS.activiti_listener;

import java.io.Serializable;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.springframework.transaction.annotation.Transactional;

import com.GB.ChinaMobileMS.controller.DinnerServiceController;
import com.GB.ChinaMobileMS.controller.PropertyServiceController;

public class DinnerVertify2Listener implements Serializable, TaskListener{

	private static final long serialVersionUID = 1L;

	/**
	 * 用餐二审监听
	 */
	@Transactional
	@Override
	public void notify(DelegateTask delegateTask) {
		switch(DinnerServiceController.STATUS){
		case PropertyServiceController.SECOND_PASS:	//通过
			System.out.println("Enter case SECOND_PASS");
			//修改流程表状态
			DinnerServiceController.dinnerReviewService.modifyDinnerReviewStatus(DinnerServiceController.dinnerReviewID, DinnerServiceController.SECOND_PASS, "二审通过");
			DinnerServiceController.dinnerPropertyService.setDinnerTableStatus(DinnerServiceController.dinnerPropertyID, DinnerServiceController.SECOND_PASS);
			break;
		case PropertyServiceController.SECOND_REJECT:	//拒绝
			System.out.println("Enter case SECOND_REJECT");
			//1.修改申请表状态
			DinnerServiceController.dinnerPropertyService.setDinnerTableStatus(DinnerServiceController.dinnerPropertyID, DinnerServiceController.SECOND_REJECT);
			//2.修改流程表状态
			DinnerServiceController.dinnerReviewService.modifyDinnerReviewStatus(DinnerServiceController.dinnerReviewID, DinnerServiceController.SECOND_REJECT, "二审拒绝");
			break;
		}
	}

}
