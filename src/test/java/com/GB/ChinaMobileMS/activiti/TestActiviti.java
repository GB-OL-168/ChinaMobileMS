package com.GB.ChinaMobileMS.activiti;

import java.util.List;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.task.Task;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-context.xml"})
public class TestActiviti {
	
	@Autowired
	private RepositoryService repositoryService;
	
	@Autowired
	private RuntimeService runtimeService;
	
	@Autowired
	private TaskService taskService;
	
	@Test
	public void deploymentTest(){
		
		repositoryService.createDeployment().addClasspathResource("act/MyProcess.bpmn").deploy();
		
	}
	
	@Test
	public void startTest(){
		
		String procId = runtimeService.startProcessInstanceByKey("myProcess").getId();
		
		System.out.println( procId );
	}
	
	@Test
	public void nextTest(){//usertask1

		List<Task> tasks = taskService.createTaskQuery().executionId("130001").list();
//		List<Task> tasks = taskService.createTaskQuery().taskId("110004").list();
		System.out.println("task size = " + tasks.size());
		for (Task task : tasks) {
            System.out.println("认领任务这里由foozie认领，因为fozzie是sales组的成员: " + task.getName());
            // 认领任务这里由foozie认领，因为fozzie是sales组的成员
            //taskService.claim(task.getId(), "fozzie");
            System.out.println("taskID "+task.getId());
            taskService.setVariable(task.getId(), "flag", true);
            taskService.complete( task.getId() );
            
            System.out.println("---");
        }
		
	}

}
