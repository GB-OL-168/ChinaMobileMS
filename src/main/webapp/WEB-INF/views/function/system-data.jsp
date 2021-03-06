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
						  <li class="active"><a href="#">数据备份</a></li>
						</ol>
					</div>
					<div class="col-md-3">
						<button type="button" class="btn btn-default btn-xs">备份</button>
						<button type="button" class="btn btn-default btn-xs">恢复</button>
					</div>
				</div>
				
				<form class="form-horizontal form">
				  <div class="form-group">
				    <label for="topic" class="col-sm-4 control-label">是否备份</label>
				    <div class="col-sm-8">
				      <label class="control-label-content">No</label>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="datetime" class="col-sm-4 control-label">上次备份时间 </label>
				    <div class="col-sm-8">
				      <label class="control-label-content">---</label>
				    </div>
				  </div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>