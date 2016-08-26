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
<!-- 
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control input-sm"
								placeholder="搜索用户或角色"> <span class="input-group-btn">
								<button class="btn btn-default btn-sm" type="button">搜索</button>
							</span>
						</div>
					</div> -->
				</div>

				<table class="table table-bordered col-md-8">
					<h3 style="text-align: center;">设置系统角色</h3>

					<tr>
						<th style="width: 100px;">用户名</th>
						<th style="width: 280px;">角色</th>
						<th style="width: 50px;">操作</th>
					</tr>
					<c:forEach items="${listUser}" var="a">
						<tr class="a">
							<td class="userName">${a.userName}</td>
							<td class="roleId">${a.roleName}</td>
							<td><a class="assignment_modify" href="javascript:void(0)">修改资料</a>
							</td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>



	<form action="/updateUserRole" Method="post" class="assignment_form" style="display: none;">
		<input name="userName" class="name" style="display: none" type="text"></input>
		<select name="roleName" class="assignment_list" name="assignment_list">
			<c:forEach items="${listRole}" var="b">
				<option name="${b.roleName}" value="${b.roleName}">${b.roleName}</option>
			</c:forEach>
		</select> 
		<input type="submit" value="确认修改" /> 
		<input  class="cancle" type="button" value="取消" /> 
	</form>

	<script>
		$(function() {
			/* 修改用户角色 */
			var a=$(".assignment_form").clone().css("display", "inline-block");
			$(".assignment_modify").click(
					function() {
						/* 写入的位置 */
						var $location = $(this).parents().siblings(".roleId");
						var $userName = $(this).parents().siblings(".userName").text();
						$("input.name").val($userName);
						$location.html(a);
						$(this).unbind("click");
					});
			
			/* 	取消修改用户角色 */
			
		});
		
	</script>
</body>

</html>