<%@page import="com.GB.ChinaMobileMS.entity.User"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.GB.ChinaMobileMS.services.interfaces.CompanyService"%>
<%@page import="com.GB.ChinaMobileMS.services.impl.CompanyServiceImpl"%>
<%@page import="com.GB.ChinaMobileMS.services.interfaces.BranchService"%>
<%@page import="com.GB.ChinaMobileMS.services.impl.BranchServiceImpl"%>
<%@page import="com.GB.ChinaMobileMS.services.interfaces.JobService"%>
<%@page import="com.GB.ChinaMobileMS.services.impl.JobServiceImpl"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 物业服务管理</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
</head>
<body>

	<div class="container">
		      
		<div class="row">
			<div class="col-md-12 main">
				<div class="row"> 
					<div class="col-md-7">
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
					<div class="col-md-3">
					</div>
					
					<div class="col-md-4">
						<div class="input-group">
					      <input type="text" class="form-control input-sm" placeholder="Search for User">
					      <span class="input-group-btn">
					        <button class="btn btn-default btn-sm" type="button">Go!</button>
					      </span>
					    </div>
					</div>
				</div>
				
				
				<form class="form-horizontal" action = "/addPropertyApplicant" method="post">
				<div class="form-group">     
				    <label for="inputEmail3" class="col-sm-2 control-label">所属公司</label>
				    <div class="col-sm-10">
				    	<%!String branchName, companyName;%>
				    	<%branchName = (String)request.getAttribute("branchName");
				    		companyName = (String)request.getAttribute("companyName");%>
				      <input type="text" readOnly="true" class="form-control" id="inputEmail3" placeholder=<%=companyName %>>
				    </div>
				  </div>
				  <div class="form-group">     
				    <label for="inputEmail3" class="col-sm-2 control-label">申请部门</label>
				    <div class="col-sm-10">
				      <input type="text" readOnly="true" class="form-control" id="inputEmail3" placeholder=<%=branchName %>>
				    </div>
				  </div>
				  <div class="form-group">
				    <label  for="inputPassword3" class="col-sm-2 control-label">申请人</label>
				    <div class="col-sm-10">
				      <input type="text" readOnly="true" class="form-control" id="inputPassword3" placeholder=<%=((User)session.getAttribute("user")).getAccountName() %>> 
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">服务日期</label>
				    <div class="col-sm-10">
				      <input name ="serviceDate" type="date" class="form-control" id="inputPassword3" placeholder="服务日期">
				    </div>
				  </div>
				  <div class="form-group">   
				    <label for="inputPassword3" class="col-sm-2 control-label">联系方式</label>
				    <div class="col-sm-10">
				      <input name ="contactInfo" type="tel" class="form-control" id="inputPassword3" placeholder="联系方式">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">具体时间</label>
				    <div class="col-sm-10">
				      <input name ="concreteTime" type="time" class="form-control" id="inputPassword3" placeholder="具体时间">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">服务地点</label>
				    <div class="col-sm-10">
				      <input name ="serviceLocation" type="text" class="form-control" id="inputPassword3" placeholder="服务地点">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">礼仪接待</label>
				    <div class="col-sm-10">
				      <input name ="receptionService" type="text" class="form-control" id="inputPassword3" placeholder="详细描述">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">秩序维护</label>
				    <div class="col-sm-10">
				      <input name ="olderMantain" type="text" class="form-control" id="inputPassword3" placeholder="详细描述">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">就餐服务</label>
				    <div class="col-sm-10">
				      <input name ="diningService" type="text" class="form-control" id="inputPassword3" placeholder="详细描述">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">环境维护</label>
				    <div class="col-sm-10">
				      <input name ="enviromentMaintain" type="text" class="form-control" id="inputPassword3" placeholder="详细描述">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">工程管理</label>
				    <div class="col-sm-10">
				      <input name ="engineeringManage" type="text" class="form-control" id="inputPassword3" placeholder="详细描述">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">消防管理</label>
				    <div class="col-sm-10">
				      <input name ="firefightingManage" type="text" class="form-control" id="inputPassword3" placeholder="详细描述">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">备注</label>
				    <div class="col-sm-10">
				      <input name ="addition" type="text" class="form-control" id="inputPassword3" placeholder="备注">
				    </div>
				  </div>
				  <div class="form-group">        
				    <div class="col-sm-offset-2 col-sm-10">
				     <button type="submit"  class="btn btn-default"  >提交</button>
				      <input type="button" class="btn btn-default" name="back" value="返回" onclick="javascript:history.back(-1);"/>
				    </div>
				  </div>
				</form>
				
			</div>
		</div>
	</div>

</body>
</html>