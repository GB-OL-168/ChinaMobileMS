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
			<div class="col-md-8 main">
				<div class="row">
					<div class="col-md-5">
						<ol class="breadcrumb">
						  <li><a href="#">系统设置</a></li>
						  <li><a href="#">权限设置</a></li>
						  <li class="dropdown active">
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">角色分配 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="#">角色授权</a></li>
					          </ul>
						  </li>
						</ol>
					</div>
					<!-- <div class="col-md-3">
						<button type="button" class="btn btn-primary btn-xs">角色分配</button>
						<button type="button" class="btn btn-default btn-xs">角色授权</button>
					</div> -->

					<div class="col-md-3">
						<button type="button" class="btn btn-default btn-xs">添加用户</button>
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
				

				<table class="table table-bordered">
				  <tr>
				  	<th>User</th>
				  	<th>Role</th>
				  	<th>Operations</th>
				  </tr>
				  <tr>
				  	<th>zhangsan</th>
				  	<th>Admin</th>
				  	<th><a href="">update</a> | <a href="">remove</a></th>
				  </tr>
				  <tr>
				  	<th>zhangsan</th>
				  	<th>role2</th>
				  	<th><a href="">update</a> | <a href="">remove</a></th>
				  </tr>
				  <tr>
				  	<th>zhangsan</th>
				  	<th>role3</th>
				  	<th><a href="">update</a> | <a href="">remove</a></th>
				  </tr>
				</table>
			</div>
		</div>
	</div>

</body>
</html>