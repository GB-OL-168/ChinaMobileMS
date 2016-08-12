<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta charset="utf-8">
	<title>后勤服务中心管理信息系统 - 权限设置</title>
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
					<div class="col-md-6">
						<ol class="breadcrumb">
						  <li><a href="#">系统设置</a></li>
						  <li><a href="#">权限设置</a></li>
						  <li class="dropdown active">
						  	<a href="/system/role-assignment-add" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">角色分配 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/system/role-authorization">角色授权</a></li>
					          </ul>
						  </li>
						</ol>
					</div>


				</div>
				

				
				<form class="form-horizontal">
				  <h4 style="text-align: center;">用户角色分配</h4>
				  <div class="form-group">
				    <label for="user" class="col-sm-3 control-label">用户</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="user" placeholder="请输入用户名">
				    </div>
				  </div>
				  <div class="form-group">
				    <label  class="col-sm-3 control-label">角色</label>
				    <div class="col-sm-6">
				      <select class="form-control">
						  <option>超级管理员</option>
						  <option>普通管理员</option>
						  <option>车辆管理员</option>
						  <option>普通用户</option>
						</select>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-5 col-sm-7">
				      <button type="submit" class="btn btn-default">分配</button>
				      <a href="system-role-assignment.html" class="btn btn-default">返回</a>
				    </div>
				  </div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>