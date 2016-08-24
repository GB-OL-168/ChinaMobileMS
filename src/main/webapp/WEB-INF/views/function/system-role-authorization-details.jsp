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
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-md-10 main">
				<div class="row">
					<div class="col-md-6">
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



				</div>


				<form class="form-horizontal" action="/updateRole" method="get">
					<h4 style="text-align: center;">系统角色详情</h4>
					<div class="form-group">
						<label for="roleName" class="col-sm-3 control-label">角色名称</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="roleName"
								name="roleName" style="display: none" value="${Role.roleName }">
							<p class="col-sm-3 control-label" id="roleName">${Role.roleName }</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">权限</label>
						<div class="col-sm-8">
							<label class="checkbox-inline"> <input type="checkbox"
								id="sysAccountManage" value="1" name="sysAccountManage">
								账号管理
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="sysPrivilegeSetting" value="1" name="sysPrivilegeSetting">
								权限设置
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="sysParameterSetting" value="1" name="sysParameterSetting">参数配置
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="sysDataRestore" value="1" name="sysDataRestore">数据备份
							</label> <br> <label class="checkbox-inline"> <input
								type="checkbox" id="proServerApplication" value="1"
								name="proServerApplication"> 服务器应用
							</label> <br> <label class="checkbox-inline"> <input
								type="checkbox" id="proAuditingApplication" value="1"
								name="proAuditingApplication">审核应用
							</label> <br> <label class="checkbox-inline"> <input
								type="checkbox" id="proManagementApplication" value="1"
								name="proManagementApplication"> 管理应用
							</label>
						</div>
					</div>
					<div class="form-group">
						<label for="roleIntro" class="col-sm-3 control-label">权限描述</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="roleName"
								placeholder="${Role.description }" name="description" value="${Role.description }">

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-4 col-sm-8">
							<button type="submit" class="btn btn-default">修改</button>
							<button type="reset" class="btn btn-default">重置</button>
							<button type="submit" class="btn btn-default"
								onclick="javascript:history.back(-1);">返回</button>
						</div>
					</div>
				</form>

				<ul style="display: none">
					<li><p>${Role.sysAccountManage}</p></li>
					<li><p>${Role.sysPrivilegeSetting}</p></li>
					<li><p>${Role.sysParameterSetting}</p></li>
					<li><p>${Role.sysDataRestore}</p></li>
					<li><p>${Role.proServerApplication}</p></li>
					<li><p>${Role.proAuditingApplication}</p></li>
					<li><p>${Role.proManagementApplication}</p></li>
				</ul>



				<script>
				$(document).ready(function(){
					/*遍历 checkbox*/
				
					if(${Role.sysAccountManage} == true)	
					{	$("input#sysAccountManage").attr("checked","checked");}
					if(${Role.sysPrivilegeSetting} == true)	
					{	$("input#sysPrivilegeSetting").attr("checked","checked");}
					if(${Role.sysParameterSetting} == true)	
					{	$("input#sysParameterSetting").attr("checked","checked");}
					if(${Role.sysDataRestore} == true)	
					{	$("input#sysDataRestore").attr("checked","checked");}
					if(${Role.proServerApplication} == true)	
					{	$("input#proServerApplication").attr("checked","checked");}
					if(${Role.proAuditingApplication} == true)	
					{	$("input#proAuditingApplication").attr("checked","checked");}
					if(${Role.proManagementApplication} == true)	
					{	$("input#proManagementApplication").attr("checked","checked");}
						
								
						
					
					
				});
				</script>

			</div>
		</div>
	</div>

</body>
</html>