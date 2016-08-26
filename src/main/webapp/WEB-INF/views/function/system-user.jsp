<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="java.util.List"%>
<head>
<meta charset="utf-8">
<title>后勤服务中心管理信息系统 - 账号管理</title>
<link rel="stylesheet" href="/assets/css/bootstrap.css">
<!-- <link rel="stylesheet" href="/assets/css/system.css"> -->
<link rel="stylesheet" href="/assets/css/system-make.css">
<script src="/assets/js/jquery-1.9.1.js"></script>
<script src="/assets/js/bootstrap.js"></script>
<style>
.1 {
	display: none;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><a href="javascript:void(0)">系统设置</a></li>
							<li><a href="javascript:void(0)">账号管理</a></li>
							<li><a href="javascript:void(0)">用户列表</a></li>
						</ol>
					</div>
				<!-- 	<div class="col-md-3">
						<a class="btn btn-default btn-xs" href="/user-add">增加用户</a>
					</div>

					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control input-sm"
								placeholder="搜索用户"> <span class="input-group-btn">
								<button class="btn btn-default btn-sm" type="button">搜索</button>
							</span>
						</div>
					</div> -->
				</div>


				<table class="table table-bordered user-list">
				<!-- 	<h3>用户列表</h3> -->
					<tr>
						<th>ID</th>
						<th>用户名</th>
						<th>操作</th>
					</tr>

					<c:forEach items="${listUser}" var="a">
						<tr class="a">
							<td class="userName">${a.userName}</td>
							<td class="accountName">${a.accountName}</td>
							<td style="display: none" class="remark">${a.remark}</td>
							<td style="display: none" class="phone">${a.phone}</td>
							<td style="display: none" class="email">${a.email}</td>
							<td style="display: none" class="birthday">${a.birthday}</td>
							<td style="display: none" class="department">${a.department}</td>
							<td style="display: none" class="identification">${a.identification}</td>
							<td style="display: none" class="sex">${a.sex}</td>
							<td style="display: none" class="jobId">${a.jobId}</td>
							<td style="display: none" class="password">${a.password}</td>
							<td><a class="modify" href="javascript:void(0)">修改资料</a> | <a
								href="/deleteUser/${a.userName}">删除用户</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

	<!-- 	新添加的地方-->

	<div id="code">
		<div class="title">
		    <span>修改信息</span>
		    <div class="close">
				<a href="javascript:void(0)" id="closebt"><img src="/assets/img/close.gif"></a>
			</div>
		</div>
		
		<form action="/updateUserInfo" method="post">
			<div class="goodtxt">
				<table class="table table-bordered">
					<tr><td>姓名</td>
						<td><input name="accountName" class="accountName" /></td></tr>
					
					<tr><td>密码</td>
						<td><input name="password" class="password" /></td></tr>
					
					<tr><td>性别</td>
						<td><input class="sex" /></td></tr>
					
					<tr><td>身份证</td>
						<td><input name="identification" class="identification" /></td></tr>
					
					<tr>
						<td>生日</td>
						<td><input name="birthday" class="birthday" /></td>
					</tr>
					<tr><td>邮箱</td>
						<td><input name="email" type="email" class="email" /></td></tr>

					<tr><td>电话</td>
						<td><input name="phone" class="phone" /></td></tr>

					<tr><td>备注</td>
						<td><input name="remark" class="remark" /></td></tr>
				</table>
			</div>
			<button type="submit" class="btn">修改</button>
			<button class="btn">返回</button>
		</form>
	</div>

	<script>
		$(function() {
			$('.a>td>.modify').click(
					function() {
						var userName = $(this).parent().siblings(".userName").text();
						var jobId = $(this).parent().siblings(".jobId").text();
						var roleId = $(this).parent().siblings(".roleId").text();
						var remark = $(this).parent().siblings(".remark").text();
						var phone = $(this).parent().siblings(".phone").text();
						var email = $(this).parent().siblings(".email").text();
						var birthday = $(this).parent().siblings(".birthday").text();
						var department = $(this).parent().siblings(".department").text();
						var identification = $(this).parent().siblings(".identification").text();
						var sex = $(this).parent().siblings(".sex").text();
						var accountName = $(this).parent().siblings(".accountName").text();
						var password = $(this).parent().siblings(".password").text();

						$("input.userName").val(userName);
						$("input.jobId").val(jobId);
						$("input.roleId").val(roleId);
						$("input.phone").val(phone);
						$("input.email").val(email);
						$("input.birthday").val(birthday);
						$("input.department").val(department);
						$("input.identification").val(identification);
						$("input.sex").val(sex);
						$("input.accountName").val(accountName);
						$("input.password").val(password);

						$('#code').center();
						$('#goodcover').show();
						$('#code').fadeIn();
					});
			$('#closebt').click(function() {
				$('#code').hide();
				$('#goodcover').hide();
			});
			$('#goodcover').click(function() {
				$('#code').hide();
				$('#goodcover').hide();
			});
			jQuery.fn.center = function(loaded) {
				var obj = this;

				if (!loaded) {

					obj.css({
						'position' : 'absolute'
					});
					obj
							.css({
								'top' : ($(window).height() - $('#code')
										.height()) * 0.2,
								'left' : 300
							/* left_position */
							});
					$(window).bind('resize', function() {
						obj.center(!loaded);
					});
					$(window).bind('scroll', function() {
						obj.center(!loaded);
					});

				} else {
					obj.stop();
					obj.css({
						'position' : 'absolute'
					});
					obj.animate({
						'top' : 100
					/* top_position */
					}, 200, 'linear');
				}
			}

		});
	</script>


</body>
</html>