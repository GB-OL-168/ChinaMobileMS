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
	<link rel="stylesheet" href="/assets/css/system-make.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<script src="/assets/js/fenye.js"></script>
	<style>
	.1 {
		display: none;
	}
	</style>
</head>
<body onLoad="goPage(1,10);">

	<div class="container" style="width:900px">
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
				</div>


				<table id="idData" class="table table-hover table-striped user-list" style="width:900px;">
		 			<h4 style="text-align:center;">用户列表</h4> 
					<tr>
						<th style="width:300px;">ID</th>
						<th style="width:300px;">用户名</th>
						<th style="width:300px;">操作</th>
					</tr>

					<c:forEach items="${listUser}" var="a">
						<tr class="a">
							<c:if test="${a.isExist=='1'}">
							<td style="width:300px;" class="userName">${a.userName}</td>
							<td style="width:300px;" class="accountName">${a.accountName}</td>
							<td style="width:300px;"><a class="modify" href="javascript:void(0)">修改资料</a> | <a
									href="/deleteUser/${a.userName}">删除用户</a></td>
								</c:if>
						</tr>
					</c:forEach>
					
					<!-- <p id="delete" style="display:none">1</p> -->
				</table>
				<br>
				<table width="70%" align="right">
			        <tr><td><div id="barcon" name="barcon"></div></td></tr>
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
					
					<td><input name="userName" class="userName" style='display:none'/></td>
					
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
						<td><input type="date" name="birthday" class="birthday" /></td>
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
			var d= '${infomation}';
			
			if(d.length !=0 && d != null)alert(d);
			console.log(d);
			
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

						$("input.remark").val(remark);
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