<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><a href="javascript:void(0)">系统设置</a></li>
							<li><a href="javascript:void(0)">权限设置</a></li>
							<li class="dropdown"><a href="javascript:void(0)">角色授权 </a></li>
						</ol>
					</div>
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
					<c:forEach items="${listRole}" var="a">
						<tr>
							<td class="roleId">${a.roleId }</td>
							<td class="roleName">${a.roleName}</td>
							<td class="description">${a.description}</td>
							<td><a href="/authorization/details/${a.roleName}">查看</a></td>
							<td><a href="/delRole/${a.roleId}"">移除</a></td>
						</tr>
					</c:forEach>
					<p id="flag" style="display:none;">${flag}</p>
				</table>
			</div>
		</div>
	</div>

<script>
	$(function(){
		var a="0";
		var a=$("#flag").text();
		if(a=="1"){
			alert("此角色存在于用户中，不能删除");
		}
	});
	
</script>
</body>
</html>