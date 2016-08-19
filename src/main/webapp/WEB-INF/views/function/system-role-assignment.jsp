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
	<style>
	th{
	    width:200px;
	}
	</style>
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
						  <li class="dropdown active">
						  	<a href="/system/role-assignment" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">角色分配 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/system/role-authorization">角色授权</a></li>
					          </ul>
						  </li>
						</ol>
					</div>

					<div class="col-md-3">
						<a href="/system/role-assignment-add" class="btn btn-default btn-xs">用户分配角色</a>
					</div>
					
					<div class="col-md-4">
						<div class="input-group">
					      <input type="text" class="form-control input-sm" placeholder="搜索用户或角色">
					      <span class="input-group-btn">
					        <button class="btn btn-default btn-sm" type="button">搜索</button>
					      </span>
					    </div>
					</div>
				</div>
				

				<table class="table table-bordered col-md-8">
					<h3 style="text-align: center;">设置系统角色</h3>
				  <tr>
				  	<th>用户名</th>
				  	<th>角色</th>
				  	<th>操作</th>
				  </tr>
				  <tr>
				  	<td>叶绪创</td>
				  	<td class="assignment"><span>超级管理员</span></td>
				  	<td><a class="assignment_modify" href="javascript:void(0)">修改角色</a></td>
				  </tr>
				  <tr>
				  	<td>欧卓鸿</th>
				  	<td>小渣渣</th>
					  <td><a href="">修改角色</a></td>
				  </tr>
				  <tr>
				  	<td>兰阳佳</td>
				  	<td>管理员</td>
					  <td><a href="">修改角色</a></td>
				  </tr>
				</table>
			</div>
		</div>
	</div>
	
	
	
	<script>
			$(function(){
				/* 修改用户角色 */	
				$(".assignment_modify").click(function(){
					$input=$("<select></select>").attr("name","assignment_list");
					$option1=$("<option>超级管理员</option>").attr("value","superuser");
					$option2=$("<option>管理员</option>").attr("value","user");
					$a=$("<a>确认修改</a>").attr("href","javascript:void(0)").css("margin-left",5);
					$input.append($option1).append($option2);
					$(this).parents().siblings(".assignment").html($input).append($a);
				});
			});
	</script>

</body>
</html>