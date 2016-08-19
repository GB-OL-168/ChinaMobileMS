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
			<div class="col-md-10 main">
				<div class="row">
					<div class="col-md-5">
						<ol class="breadcrumb">
							<li><a href="#">系统设置</a></li>
							<li><a href="#">权限设置</a></li>
							<li class="dropdown active"><a
								href="/system/role-assignment" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">角色分配 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/system/role-authorization">角色授权</a></li>
								</ul></li>
						</ol>
					</div>

					<div class="col-md-3">
						<a href="/system/role-assignment-add"
							class="btn btn-default btn-xs">用户分配角色</a>
					</div>

					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control input-sm"
								placeholder="搜索用户或角色"> <span class="input-group-btn">
								<button class="btn btn-default btn-sm" type="button">搜索</button>
							</span>
						</div>
					</div>
				</div>


				<table class="table table-bordered">
					<h3 style="text-align: center;">设置系统角色</h3>
					<tr>
						<th>用户名</th>
						<th>角色</th>
						<th>操作</th>
					</tr>

					<!-- 				  	<th>zhangsan</th> -->
					<!-- 				  	<th>Admin</th> -->
					<!-- 				  	<th><a href="">修改</a> | <a href="">删除</a></th> -->
					<!-- 				  </tr> -->
					<!-- 				  <tr> -->
					<!-- 				  	<th>zhangsan</th> -->
					<!-- 				  	<th>role2</th> -->
					<!-- 					  <th><a href="">修改</a> | <a href="">删除</a></th> -->
					<!-- 				  </tr> -->
					<!-- 				  <tr> -->
					<!-- 				  	<th>zhangsan</th> -->
					<!-- 				  	<th>role3</th> -->
					<!-- 					  <th><a href="">修改</a> | <a href="">删除</a></th> -->
					<!-- 				  </tr> -->

					<c:forEach items="${listUser}" var="a">
						<tr class="a">

							<th class="userName">${a.userName}</th>
							<th class="roleId">${a.roleName}</th>

							<th><a href="javascript:void(0)">修改资料</a> </th>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

</body>
</html>