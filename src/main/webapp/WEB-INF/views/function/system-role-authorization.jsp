<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
					<div class="col-md-5">
						<ol class="breadcrumb">
							<li><a href="#">系统设置</a></li>
							<li><a href="#">权限设置</a></li>
							<li class="dropdown active"><a
								href="/system/role-authorization" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">角色授权 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/system/role-assignment">角色分配</a></li>
								</ul></li>
						</ol>
					</div>

					<div class="col-md-3">
						<a href="/system/role-authorization-add"
							class="btn btn-default btn-xs">新增系统角色</a>
					</div>

					<!-- <div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control input-sm"
								placeholder="Search for User"> <span
								class="input-group-btn">
								<button class="btn btn-default btn-sm" type="button">Go!</button>
							</span>
						</div>
					</div> -->
				</div>


				<table class="table table-bordered">
					<h4 style="text-align: center;">已设置角色权限</h4>
					<tr>
						<th>编号</th>
						<th>角色名称</th>
						<th>角色描述</th>
						<th>详情</th>
						<th>操作</th>
					</tr>
					<!-- 				  <tr> -->
					<!-- 				  	<th>1</th> -->
					<!-- 				  	<th>zhangsan</th> -->
					<!-- 				  	<th>Admin</th> -->
					<!-- 				  	<th><a href="#">查看</a></th> -->
					<!-- 				  	<th><a href="">update</a> | <a href="">remove</a></th> -->
					<!-- 				  </tr> -->
					<!-- 				  <tr> -->
					<!-- 				  	<th>2</th> -->
					<!-- 				  	<th>zhangsan</th> -->
					<!-- 				  	<th>role2</th> -->
					<!-- 				  	<th><a href="#">查看</a></th> -->
					<!-- 				  	<th><a href="">update</a> | <a href="">remove</a></th> -->
					<!-- 				  </tr> -->
					<!-- 				  <tr> -->
					<!-- 				  	<th>3</th> -->
					<!-- 				  	<th>zhangsan</th> -->
					<!-- 				  	<th>role3</th> -->
					<!-- 				  	<th><a href="#">查看</a></th> -->
					<!-- 				  	<th><a href="">update</a> | <a href="">remove</a></th> -->
					<!-- 				  </tr> -->

					<c:forEach items="${listRole}" var="a">
						<tr>
							<th class="roleId">${a.roleId }</th>
							<th class="roleName">${a.roleName}</th>
							<th class="description">${a.description}</th>
							<th><a href="/authorization/details/${a.roleName}" class="btn btn-default btn-xs">查看</a></th>
							<th><a href="/delRole/${a.roleId}"  class="btn btn-default btn-xs">移除</a></th>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

</body>
</html>