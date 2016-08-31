<%@page import="com.GB.ChinaMobileMS.entity.User"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.GB.ChinaMobileMS.services.interfaces.CompanyService"%>
<%@page import="com.GB.ChinaMobileMS.services.impl.CompanyServiceImpl"%>
<%@page import="com.GB.ChinaMobileMS.services.interfaces.BranchService"%>
<%@page import="com.GB.ChinaMobileMS.services.impl.BranchServiceImpl"%>
<%@page import="com.GB.ChinaMobileMS.services.interfaces.JobService"%>
<%@page import="com.GB.ChinaMobileMS.services.impl.JobServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 物业服务管理</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<link rel="stylesheet" href="/assets/css/">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<script src="/assets/js/fenye.js"></script>
</head>
<body>
	<div class="container" style="width:1100px;">
		<div class="row">
			<div class="col-md-12 main">
				<div class="row"> 
					<div class="col-md-12">
						<ol class="breadcrumb">
						  <li><a href="#">物业服务管理</a></li>
						  <li><a href="#">申请方应用</a></li>
						  <li class="dropdown active">
						  	<a href="/property/applicant" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">申请表格 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/property/server">服务状态</a>
					          </ul>
						  </li>
						</ol>
					</div>
					<div class="col-md-3"></div>	
				</div>
				
				<form class="form-horizontal" action = "/addPropertyApplicant" method="post">
					<div class="form-group">
						<h4 class="col-sm-offset-4">申请表格填写</h4>
					</div>
					
					<div class="form-group">     
					    <label for="inputEmail3" class="col-sm-1 control-label">所属公司</label>
					    <div class="col-sm-4">
					    	<%!String branchName, companyName;%>
					    	<%branchName = (String)request.getAttribute("branchName");
					    		companyName = (String)request.getAttribute("companyName");%>
					      <input type="text" readOnly="true" class="form-control" id="inputEmail3" placeholder=<%=companyName %>>
					    </div>
					     
					    <label for="inputEmail3" class="col-sm-1 control-label">申请部门</label>
					    <div class="col-sm-4">
					      <input type="text" readOnly="true" class="form-control" id="inputEmail3" placeholder=<%=branchName %>>
					    </div>
				   </div>
				   
				  <div class="form-group">
					    <label  for="inputPassword3" class="col-sm-1 control-label">申请人</label>
					    <div class="col-sm-4">
					      <input type="text" readOnly="true" class="form-control" id="inputPassword3" placeholder=<%=((User)session.getAttribute("user")).getAccountName() %>> 
					    </div>
					  
					    <label for="inputPassword3" class="col-sm-1 control-label">服务日期</label>
					    <div class="col-sm-4">
					      <input name ="serviceDate" type="date" class="form-control" id="serviceDate" placeholder="服务日期">
					    </div>
				  </div>
				  
				  <div class="form-group">   
					    <label for="inputPassword3" class="col-sm-1 control-label">联系方式</label>
					    <div class="col-sm-4">
					      <input name ="contactInfo" type="tel" 
					      class="form-control" id="inputPassword3" placeholder="联系方式">
					    </div>
					    <label for="inputPassword3" class="col-sm-1 control-label">具体时间</label>
					    <div class="col-sm-4">
					      <input name ="concreteTime" type="time" class="form-control" id="inputPassword3" required placeholder="具体时间">
					    </div>
				  </div>
				  
				  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-1 control-label">服务地点</label>
					    <div class="col-sm-4">
					      <textarea name ="serviceLocation" type="text" class="form-control" maxlength="64"
					       id="inputPassword3" required placeholder="最多可输入64字"></textarea>
					    </div>
					    <label for="inputPassword3" class="col-sm-1 control-label">礼仪接待</label>
					    <div class="col-sm-4">
					      <textarea name ="receptionService" type="text" class="form-control" maxlength="64"
					       id="inputPassword3" placeholder="最多可输入64字"></textarea>
					    </div>
				  </div>
				  
				  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-1 control-label">秩序维护</label>
					    <div class="col-sm-4">
					      <textarea name ="olderMantain" type="text" class="form-control" maxlength="64"
					       id="inputPassword3" placeholder="最多可输入64字"></textarea>
					    </div>
					    <label for="inputPassword3" class="col-sm-1 control-label">就餐服务</label>
					    <div class="col-sm-4">
					      <textarea name ="diningService" type="text" class="form-control" maxlength="64"
					       id="inputPassword3" placeholder="最多可输入64字"></textarea>
					    </div>
				  </div>
				  
				  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-1 control-label">环境维护</label>
					    <div class="col-sm-4">
					      <textarea name ="enviromentMaintain" type="text" maxlength="64"
					       class="form-control" id="inputPassword3" placeholder="最多可输入64字"></textarea>
					    </div>
					    <label for="inputPassword3" class="col-sm-1 control-label">工程管理</label>
					    <div class="col-sm-4">
					      <textarea name ="engineeringManage" type="text" maxlength="64"
					       class="form-control" id="inputPassword3" placeholder="最多可输入64字"></textarea>
					    </div>
				  </div>
				  
				  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-1 control-label">消防管理</label>
					    <div class="col-sm-4">
					      <textarea name ="firefightingManage" maxlength="64"
					       type="text" class="form-control" id="inputPassword3" placeholder="最多可输入64字"></textarea>
					    </div>
					    <label for="inputPassword3" class="col-sm-1 control-label">备注</label>
					    <div class="col-sm-4">
					      <textarea maxlength="64" name ="addition" type="text" 
					      class="form-control" id="inputPassword3" placeholder="最多可输入64字"></textarea>
					    </div>
				  </div>
				  
				  <div class="form-group">        
				    <div class="col-sm-offset-4 col-sm-7">
				     <button type="submit" id="submit"  class="btn btn-default"  >提交</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				      <input type="button" class="btn btn-default" name="back" value="返回" onclick="javascript:history.back(-1);"/>
				    </div>
				  </div>
				</form>
				
			</div>
		</div>
	</div>

<script type="text/javascript">
	$(function(){
		$("#submit").click(function(){
			return validateInfo();
		})
	});
	
	function validateInfo() {
		var serviceDate = $("#serviceDate").val();
		if(serviceDate.length > 10){
			alert("请选择正确的日期格式");
			return false;
		}
		
		var today=new Date();
		var day = today.getMonth()+1;
		var dayStr;
		if(day < 10){
			dayStr = "0" + day;
		}else
			daystr = day + "";
		var todayStr = today.getFullYear() + "-" + dayStr + "-" + today.getDate();
		
		if(serviceDate < todayStr){
			alert("服务日期必须在当前日期之后");
			return false;
		}
		return true;
	}
	</script>
</body>
</html>