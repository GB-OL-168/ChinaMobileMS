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
	<link rel="stylesheet" href="/assets/css/system-role-assignment.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<script src="/assets/js/fenye.js"></script>
	<script src="/assets/js/system-role-assignment.js"></script>
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
							<li><a href="javascript:void(0)">角色分配 </a></li>
						</ol>
					</div>
				</div>
				<br>
				<table id="idData"
					class="table table-bordered table-hover table-striped">
					<tr>
						<th style="width: 300px;">用户名</th>
						<th style="width: 500px;">角色</th>
						<th style="width: 300px;">操作</th>
					</tr>
					<c:forEach items="${listUser}" var="a">
						<tr class="a">
							<td class="userName">${a.userName}</td>
							<td class="roleName">${a.roleName}</td>
							<td class="modify"><a class="assignment_modify"
								href="javascript:void(0)">修改角色</a></td>
						</tr>
					</c:forEach>
					
				</table>
				<br>
				<table width="70%" align="right">
					<tr>
						<td><div id="barcon" name="barcon"></div></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<p id="flag" style="display:none">${flag}</p>
	<!-- 修改角色下拉框 -->

	<form action="/updateUserRole" Method="post" class="assignment_form"
		style="display: none;">
		<input name="userName" class="Name" type="text" style="display: none"></input>
		<select name="roleName" class="assignment_list" name="assignment_list">
			<c:forEach items="${listRole}" var="b">
				<option name="${b.roleName}" value="${b.roleName}">${b.roleName}</option>
			</c:forEach>
		</select>
		<button type="submit" class="btn btn-info btn-xs">确认修改</button>
	</form>
</body>

</html>