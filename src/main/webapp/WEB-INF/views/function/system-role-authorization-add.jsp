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
						  <li class="dropdown active">
						  	<a href="/system/role-authorization" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">角色授权 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/system/role-assignment">角色分配</a></li>
					          </ul>
						  </li>
						</ol>
					</div>

					
					<div class="col-md-4">
						<div class="input-group">
					      <input type="text" class="form-control input-sm" placeholder="Search for User">
					      <span class="input-group-btn">
					        <button class="btn btn-default btn-sm" type="button">Go!</button>
					      </span>
					    </div>
					</div>
				</div>
				

				<form class="form-horizontal">
				  <h4 style="text-align: center;">设置系统角色</h4>
				  <div class="form-group">
				    <label for="roleName" class="col-sm-3 control-label">角色名称</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="roleName" placeholder="请输入系统角色">
				    </div>
				  </div>
				  <div class="form-group">
				    <label  class="col-sm-3 control-label">权限</label>
				    <div class="col-sm-8">
				      <label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox1" value="option1" checked="checked"> 账号管理
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox2" value="option2"> 权限设置
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox3" value="option3">参数配置
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox3" value="option3">数据备份
						</label>
						<br>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox1" value="option1"> 上市公司资产
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox2" value="option2"> 车辆信息
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox3" value="option3">维修维护信息
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox1" value="option1"> 公务电话
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox2" value="option2"> 服务公司资产
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox3" value="option3">交通
						</label>
						
						<br>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox1" value="option1"> 物业服务需求申请
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox2" value="option2"> 物业服务需求审核
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox3" value="option3">物业服务需求管理
						</label>
						
						
						<br>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox1" value="option1"> 后勤服务考评
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox2" value="option2"> 用餐服务考评
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" id="inlineCheckbox3" value="option3">物业服务需求管理
						</label>
						
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="roleIntro" class="col-sm-3 control-label">权限描述</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="roleName" placeholder="请输入权限描述">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-4 col-sm-8">
				      <button type="submit" class="btn btn-default">设置</button>
				      <a href="system-role-authorization.html" class="btn btn-default">取消</a>
				    </div>
				  </div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>