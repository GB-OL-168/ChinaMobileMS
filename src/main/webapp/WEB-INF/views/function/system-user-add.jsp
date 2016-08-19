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
				      <input name="password" type="password" class="form-control" placeholder="请输入密码">
				    </div>
				  </div>

<!-- 				  <div class="form-group"> -->
<!-- 				    <label class="col-sm-4 control-label">密码</label> -->
<!-- 				    <div class="col-sm-5"> -->
<!-- 				      <input type="password" class="form-control" placeholder="请再次输入密码"> -->
<!-- 				    </div> -->
<!-- 				  </div> -->

				 <div class="form-group">
				    <label class="col-sm-4 control-label">姓名</label>
				    <div class="col-sm-5">
				      <input name="accountName" type="text" class="form-control" placeholder="请输入姓名">
				    </div>
				  </div>

				  <div class="form-group">
				    <label  class="col-sm-4 control-label">性别</label>
				    <div class="col-sm-5">
				      <select name="sex" class="form-control">
						  <option value="男">男</option>
						  <option value="女">女</option>
						</select>
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="col-sm-4 control-label">身份证</label>
				    <div class="col-sm-5">
				      <input name="identification" type="text" class="form-control" placeholder="请输入身份证">
				    </div>
				  </div>

				 <div class="form-group">
				    <label  class="col-sm-4 control-label">部门</label>
				    <div class="col-sm-5">
				      <select name="department" class="form-control">
						  <option value="department A">department A</option>
						  <option value="department B">department B</option>
						</select>
				    </div>
				  </div>
					

				<div class="form-group">
				    <label class="col-sm-4 control-label">出生日期</label>
				    <div class="col-sm-5">
				      <input name="birthday" type="date" class="form-control" placeholder="请输入出生年月日">
				    </div>
				  </div>


				  <div class="form-group">
				    <label class="col-sm-4 control-label">邮箱</label>
				    <div class="col-sm-5">
				      <input name="email" type="email" class="form-control" placeholder="请输入邮箱">
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="col-sm-4 control-label">电话</label>
				    <div class="col-sm-5">
				      <input name="phone" type="tel" class="form-control" placeholder="请输入电话">
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="col-sm-4 control-label">remark</label>
				    <div class="col-sm-5">
				      <input  name="remark" type="text" class="form-control" placeholder="remark">
				    </div>
				  </div>

<!-- 				  <div class="form-group"> -->
<!-- 				    <label for="roleIntro" class="col-sm-4 control-label">验证码</label> -->
<!-- 				    <div class="col-sm-5"> -->
<!-- 				      <input type="text" class="form-control" id="roleName" placeholder="请输入验证码"> -->
<!-- 				    </div> -->
<!-- 				    <div class="col-sm-3"> -->
<!-- 				      <img src=""  alt="verificate picture"/> -->
<!-- 				    </div> -->
<!-- 				  </div> -->

				  <div class="form-group">
				    <div class="col-sm-offset-5 col-sm-5">
				      <button type="submit" class="btn btn-default">新建</button>
				      <button type="submit" class="btn btn-default" onclick="javascript:history.back(-1);">返回</a>
				    </div>
				  </div>
				  
				</form>
			</div>
		</div>
	</div>

</body>
</html>