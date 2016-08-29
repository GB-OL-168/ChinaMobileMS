<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
<head>
<meta charset="utf-8">
	<title>后勤服务中心管理信息系统 -  参数设置</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
</head>
<body>
	<div class="container" style="width:900px;">
		
		<div class="row">
			<div class="col-md-12 main">
				<div class="row">
						<ol class="breadcrumb">
						  <li><a href="#">系统设置</a></li>
						  <li><a href="#">参数设置</a></li>
						  <li class="dropdown">
						  	<a href="/system/paremeter" class="dropdown-toggle" data-toggle="dropdown" >提醒信息 </a>
						  </li>
						  <li>	<a href="/system/parameter-update" class="btn btn-default btn-xs">新增信息</a></li>
						</ol>
				</div>
		
				<form class="form-horizontal" style="width:900px;">
				  <h4 style="text-align: center;">提醒信息</h4>
				  <div class="form-group">
				    <label for="topic" class="col-sm-2 control-label">标题</label>
				    <div class="col-sm-10">
				      <label class="control-label-content"><%=request.getAttribute("topic") %> </label>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="datetime" class="col-sm-2 control-label">提醒时间</label>
				    <div class="col-sm-10">
				      <label class="control-label-content"><%=request.getAttribute("time") %> </label>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="content" class="col-sm-2 control-label">提醒内容</label>
				    <div class="col-sm-10">
				      <label class="control-label-content"><%=request.getAttribute("content") %> </label>
				    </div>
				  </div>
				
				</form>
			</div>
		</div>
	</div>

</body>
</html>