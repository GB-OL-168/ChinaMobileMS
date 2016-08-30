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
							<li><a href="javascript:void(0)">系统设置</a></li>
							<li><a href="javascript:void(0)">权限设置</a></li>
							<li class="dropdown"><a href="javascript:void(0)">角色授权 </a></li>
						</ol>
					</div>
				</div>
				<form class="form-horizontal" action="/updateRole" method="get">
					<h4 style="text-align: center;">系统角色详情</h4>
					<div class="form-group">
						<label for="roleName" class="col-sm-4 control-label">角色名称</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="roleName"
								name="roleName" style="display: none" value="${Role.roleName}">
							<p class="col-sm-3 control-label" id="roleName">${Role.roleName}</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">权限</label>
						<div class="col-sm-8">
							<label class="checkbox-inline"> <input type="checkbox"
								id="sysAccountManage" value="1" name="sysAccountManage" cla>
								账号管理
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="sysPrivilegeSetting" value="1" name="sysPrivilegeSetting">
								权限设置
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="sysParameterSetting" value="1" name="sysParameterSetting">参数配置
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="sysDataRestore" value="1" name="sysDataRestore">数据备份
							</label> <br> <label class="checkbox-inline"> <input
								type="checkbox" id="registerAsset" value="1"
								name="registerAsset">上市公司资产登记
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="queryAsset" value="1" name="queryAsset">上市公司资产查询
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="mangaementAsset" value="1" name="mangaementAsset">上市公司资产管理
							</label> <br> <label class="checkbox-inline"> <input
								type="checkbox" id="registerVehicle" value="1"
								name="registerVehicle">车辆登记
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="queryVehicle" value="1" name="queryVehicle">车辆查询
							</label> <br> <label class="checkbox-inline"> <input
								type="checkbox" id="serverApplicationDinner" value="1"
								name="serverApplicationDinner">配餐中心申请方应用
							</label><label class="checkbox-inline"> <input type="checkbox"
								id="auditingApplicationDinner" value="1"
								name="auditingApplicationDinner">配餐中心审核方应用
							</label><label class="checkbox-inline"> <input type="checkbox"
								id="managementApplicationDinner" value="1"
								name="managementApplicationDinner">配餐中心管理方应用
							</label> <br> <label class="checkbox-inline"> <input
								type="checkbox" id="serverApplicationProperty" value="1"
								name="serverApplicationProperty">物业服务申请方应用
							</label><label class="checkbox-inline"> <input type="checkbox"
								id="auditingApplicationProperty" value="1"
								name="auditingApplicationProperty">物业服务审核方应用
							</label><label class="checkbox-inline"> <input type="checkbox"
								id="managementApplicationProperty" value="1"
								name="managementApplicationProperty">物业服务管理方应用
							</label> <br> <label class="checkbox-inline"> <input
								type="checkbox" id="evaluationMangaementProperty" value="1"
								name="evaluationMangaementProperty">物业服务考评管理
							</label><label class="checkbox-inline"> <input type="checkbox"
								id="evaluationFillProperty" value="1"
								name="evaluationFillProperty">物业服务考评填写
							</label>
						</div>
					</div>
					<div class="form-group">
						<label for="roleIntro" class="col-sm-3 control-label">权限描述</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="roleName"
								placeholder="${Role.description }" name="description"
								value="${Role.description }">

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
					if(${Role.serverApplicationDinner} == true)	
					{	$("input#serverApplicationDinner").attr("checked","checked");}
					if(${Role.serverApplicationProperty} == true)	
					{	$("input#serverApplicationProperty").attr("checked","checked");}
					if(${Role.auditingApplicationDinner} == true)	
					{	$("input#auditingApplicationDinner").attr("checked","checked");}
					if(${Role.auditingApplicationProperty} == true)	
					{	$("input#auditingApplicationProperty").attr("checked","checked");}
					if(${Role.managementApplicationDinner} == true)	
					{	$("input#managementApplicationDinner").attr("checked","checked");}
					if(${Role.managementApplicationProperty} == true)	
					{	$("input#managementApplicationProperty").attr("checked","checked");}
					if(${Role.managementApplicationDinner} == true)	
					{	$("input#managementApplicationDinner").attr("checked","checked");}
					if(${Role.managementApplicationProperty} == true)	
					{	$("input#managementApplicationProperty").attr("checked","checked");}
					if(${Role.managementApplicationDinner} == true)	
					{	$("input#managementApplicationDinner").attr("checked","checked");}
					if(${Role.managementApplicationProperty} == true)	
					{	$("input#managementApplicationProperty").attr("checked","checked");}
					if(${Role.queryVehicle} == true)	
					{	$("input#queryVehicle").attr("checked","checked");}
					if(${Role.queryAsset} == true)
					{
					$("input#queryAsset").attr("checked","checked");
					}
					if(${Role.registerVehicle} == true)
					{
					$("input#registerVehicle").attr("checked","checked");
					}
					if(${Role.registerAsset} == true)
					{
					$("input#registerAsset").attr("checked","checked");
					}
					if(${Role.mangaementAsset} == true)
					{
					$("input#mangaementAsset").attr("checked","checked");
					}
					if(${Role.evaluationMangaementProperty} == true)
					{
					$("input#evaluationMangaementProperty").attr("checked","checked");
					}	
					if(${Role.evaluationFillProperty} == true)
					{
					$("input#evaluationFillProperty").attr("checked","checked");
					}	
				});
				</script>

			</div>
		</div>
	</div>

</body>
</html>