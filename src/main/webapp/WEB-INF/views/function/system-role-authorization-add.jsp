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


	<div class="container" style="width: 900px;">
		<div class="row">
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li><a href="javascript:void(0)">系统设置</a></li>
							<li><a href="javascript:void(0)">权限设置</a></li>
							<li class="dropdown"><a href="javascript:void(0)">系统角色新增</a></li>
						</ol>
					</div>
				</div>
				<form class="form-horizontal" style="width: 900px;"
					action="/addRole" method="get">
					<h4 style="text-align: center;">新增系统角色</h4>
					<div class="form-group">
						<label for="roleName" class="col-sm-3 control-label">角色名称</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="roleName"
								placeholder="请输入系统角色名称" name="roleName">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">权限</label>
						<div class="col-sm-8">
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox1" value="1" name="sysAccountManage">
								账号管理
							</label> 
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox2" value="1" name="sysPrivilegeSetting">
								权限设置
							</label> 
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox3" value="1" name="sysParameterSetting">参数配置
							</label> 
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox3" value="1" name="sysDataRestore">数据备份
							</label> <br> 
							<label class="checkbox-inline"> 
								<input
								type="checkbox" id="inlineCheckbox1" value="1"
								name="registerAsset">上市公司资产登记
							</label>
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox1" value="1" name="queryAsset">上市公司资产查询
							</label>
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox1" value="1" name="useInfoAsset">上市公司资产使用信息
							</label> 
							<label class="checkbox-inline"> 
								<input type="checkbox" id="inlineCheckbox1" value="1" 
								name="statisticsAsset">上市公司资产统计信息
							</label>
							<label class="checkbox-inline"> 
								<input type="checkbox" id="inlineCheckbox1" value="1"
								name="registerVehicle">车辆登记
							</label>
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox1" value="1" name="queryVehicle">车辆查询
							</label> <br> 
							<label class="checkbox-inline"> <input
								type="checkbox" id="inlineCheckbox1" value="1"
								name="serverApplicationDinner">配餐中心申请方应用
							</label>
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox1" value="1" name="auditingApplicationDinner">
								配餐中心审核方应用
							</label>
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox1" value="1"
								name="managementApplicationDinner">配餐中心管理方应用
							</label> <br> 
							<label class="checkbox-inline"> 
							<input type="checkbox" id="inlineCheckbox1" value="1"
								name="serverApplicationProperty">物业服务申请方应用
							</label>
							<label class="checkbox-inline"> 
							<input type="checkbox"
								id="inlineCheckbox1" value="1"
								name="auditingApplicationProperty">物业服务审核方应用
							</label>
							<label class="checkbox-inline"> 
								<input type="checkbox"
								id="inlineCheckbox1" value="1"
								name="managementApplicationProperty">物业服务管理方应用
							</label> <br> 
							<label class="checkbox-inline"> 
							<input type="checkbox" id="inlineCheckbox1" value="1"
								name="evaluationMangaementProperty">物业服务考评管理
							</label>
							<label class="checkbox-inline"> 
							<input type="checkbox"
								id="inlineCheckbox1" value="1" name="evaluationFillProperty">
								物业服务考评填写
							</label>

						</div>
					</div>
					<div class="form-group">
						<label for="roleIntro" class="col-sm-3 control-label">权限描述</label>
						<div class="col-sm-8">
							<textarea maxlength="64" type="text" class="form-control" id="roleName"
								placeholder="最多输入64个字" name="description"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-5 col-sm-8">
							<button type="submit" class="btn btn-default">设置</button>&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="/system/role-authorization"><button type="button" class="btn btn-default"
								>返回</button></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>