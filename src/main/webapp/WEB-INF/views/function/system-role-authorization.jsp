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
	<link rel="stylesheet" href="/assets/css/system-role-authorization.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<script src="/assets/js/fenye.js"></script>
	<script src="/assets/js/system-role-authorization.js"></script>
</head>
<body onLoad="goPage(1,10);">
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
				<br>
				<table id="idData" class="table table-hover table-striped">			
					<tr>
						<th class="roleId">编号</th>
						<th class="roleName">角色名称</th>
						<th class="description">角色描述</th>
						<th class="look">详情</th>
						<th class="remove">操作</th>
					</tr>
					<c:forEach items="${listRole}" var="a" varStatus="status">
						<tr>
							<td class="roleId">${ status.index + 1}</td>
							<td class="roleName">${a.roleName}</td>
							<td class="description">${a.description}</td>
							<td class="look"><a href="/authorization/details/${a.roleName}">查看</a></td>
							<td class="remove"><a href="/delRole/${a.roleId}"">删除角色</a></td>
						</tr>
					</c:forEach>
					<p id="flag" style="display:none;">${flag}</p>
				</table>
				
				<br>
				<table width="70%" align="right">
			        <tr><td><div id="barcon" name="barcon"></div></td></tr>
			    </table>
			</div>
		</div>
	</div>

</body>
</html>