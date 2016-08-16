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
	<div class="container">
		
		<div class="row">
			<div class="col-md-8 main">
				<div class="row">
					<div class="col-md-5">
						<ol class="breadcrumb">
						  <li><a href="#">系统设置</a></li>
						  <li><a href="#">参数设置</a></li>
						  <li class="dropdown active">
						  	<a href="/system/paremeter" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">提醒信息 
						  		<!-- <span class="caret"></span> -->
						  	</a>
					          <!-- <ul class="dropdown-menu">
					            <li><a href="#"></a></li>
					          </ul> -->
						  </li>
						</ol>
					</div>
					<div class="col-md-3">
						<a href="/system/parameter-update" class="btn btn-default btn-xs">新增信息</a>
					</div>
					
					
				</div>
				

				<form class="form-horizontal">
				  <h4 style="text-align: center;">提醒信息</h4>
				  <div class="form-group">
				    <label for="topic" class="col-sm-2 control-label">标题</label>
				    <div class="col-sm-10">
				      <label class="control-label-content">A topic.</label>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="datetime" class="col-sm-2 control-label">提醒时间</label>
				    <div class="col-sm-10">
				      <label class="control-label-content">A datetime.</label>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="content" class="col-sm-2 control-label">提醒内容</label>
				    <div class="col-sm-10">
				      <label class="control-label-content">A content.</label>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="file" class="col-sm-2 control-label">附件</label>
				    <div class="col-sm-10">
				      <label class="control-label-content">A file.</label>
				    </div>
				  </div>
				  <div class="form-group">
				    <label  class="col-sm-2 control-label">提醒对象</label>
				    <div class="col-sm-10">
				      <label class="control-label-content">A object.</label>
				    </div>
				  </div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>