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
<!-- 	<link rel="stylesheet" href="/assets/css/system-role-authorization.css">
 -->	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<script src="/assets/js/fenye.js"></script>
	<script src="/assets/js/system-role-authorization.js"></script>
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
				<br>
				<table id="idData" class="table table-hover table-striped table-bordered">			
					<tr>
						<th>编号</th>
						<th>角色名称</th>
						<th>角色描述</th>
						<th>详情</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${listRole}" var="a" varStatus="status">
						<tr>
							<td>${ status.index + 1}</td>
							<td>${a.roleName}</td>
							<td>${a.description}</td>
							<td><a href="/authorization/details/${a.roleName}">
							<button class="btn btn-sm">查看</button></a></td>
							<td><!-- <a href="/delRole/${a.roleId}"> </a>-->
							<button onclick="deleted(${a.roleId})" class="btn btn-sm">删除角色</button></td>
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