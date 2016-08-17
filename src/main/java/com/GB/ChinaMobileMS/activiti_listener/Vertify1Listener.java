package com.GB.ChinaMobileMS.activiti_listener;

import java.io.Serializable;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.Expression;
import org.activiti.engine.delegate.TaskListener;

public class Vertify1Listener implements Serializable, TaskListener {
	
	@Override
	public void notify(DelegateTask delegateTask) {
		
		System.out.println("User1 task excute");
	}

}
