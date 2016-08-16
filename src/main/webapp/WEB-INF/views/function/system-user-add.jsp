<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta charset="utf-8">
	<title>后勤服务中心管理信息系统 - 账号管理</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
</head>
<body>

	<div class="container">
		
		<div class="row">
			<div class="col-md-8 main">
				<div class="row">
					<div class="col-md-7">
						<ol class="breadcrumb">
						  <li><a href="#">系统设置</a></li>
						  <li><a href="#">账号管理</a></li>
						  <li><a href="#">添加角色</a></li>
						</ol>
					</div>

					
					
					<div class="col-md-5">
						<div class="input-group">
					      <input type="text" class="form-control input-sm" placeholder="Search for User">
					      <span class="input-group-btn">
					        <button class="btn btn-default btn-sm" type="button">Go!</button>
					      </span>
					    </div>
					</div>
				</div>
				

				<form class="form-horizontal" action = "/addUser"method="post">
				  <h3 style="text-align: center;">添加用户</h3>

				  <div class="form-group">
				    <label class="col-sm-4 control-label">账号</label>
				    <div class="col-sm-5">
				      <input name ="userName" type="text" class="form-control" placeholder="请输入用账号">
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="col-sm-4 control-label">密码</label>
				    <div class="col-sm-5">
				      <input  type="password" class="form-control" placeholder="请输入密码">
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="col-sm-4 control-label">密码</label>
				    <div class="col-sm-5">
				      <input type="password" class="form-control" placeholder="请再次输入密码">
				    </div>
				  </div>

				 <div class="form-group">
				    <label class="col-sm-4 control-label">姓名</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" placeholder="请输入姓名">
				    </div>
				  </div>

				  <div class="form-group">
				    <label  class="col-sm-4 control-label">性别</label>
				    <div class="col-sm-5">
				      <select class="form-control">
						  <option>男</option>
						  <option>女</option>
						</select>
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="col-sm-4 control-label">身份证</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" placeholder="请输入身份证">
				    </div>
				  </div>

				 <div class="form-group">
				    <label  class="col-sm-4 control-label">地址</label>
				    <div class="col-sm-5">
				      <select class="form-control">
						  <option>department A</option>
						  <option>department B</option>
						</select>
				    </div>
				  </div>
					

				<div class="form-group">
				    <label class="col-sm-4 control-label">出生日期</label>
				    <div class="col-sm-5">
				      <input type="date" class="form-control" placeholder="请输入出生年月日">
				    </div>
				  </div>


				  <div class="form-group">
				    <label class="col-sm-4 control-label">邮箱</label>
				    <div class="col-sm-5">
				      <input type="email" class="form-control" placeholder="请输入邮箱">
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="col-sm-4 control-label">电话</label>
				    <div class="col-sm-5">
				      <input type="tel" class="form-control" placeholder="请输入电话">
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="col-sm-4 control-label">remark</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" placeholder="remark">
				    </div>
				  </div>

				  <div class="form-group">
				    <label for="roleIntro" class="col-sm-4 control-label">验证码</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="roleName" placeholder="请输入验证码">
				    </div>
				    <div class="col-sm-3">
				      <img src=""  alt="verificate picture"/>
				    </div>
				  </div>

				  <div class="form-group">
				    <div class="col-sm-offset-5 col-sm-5">
				      <button type="submit" class="btn btn-default">新建</button>
				      <a href="system-?id=user" class="btn btn-default">返回</a>
				    </div>
				  </div>
				  
				</form>
			</div>
		</div>
	</div>

</body>
</html>