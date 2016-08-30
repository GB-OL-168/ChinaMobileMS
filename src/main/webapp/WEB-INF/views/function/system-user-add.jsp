<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>后勤服务中心管理信息系统 - 账号管理</title>
<link rel="stylesheet" href="/assets/css/bootstrap.css">
<link rel="stylesheet" href="/assets/css/system.css">
<script src="/assets/js/jquery-1.9.1.js"></script>
<script src="/assets/js/bootstrap.js"></script>
<script src="/assets/js/md5.js" type="text/javascript"></script>
</head>
<body>
	<div class="container" style="width: 900px;">
		<div class="row">
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><a href="javascript:void(0)">系统设置</a></li>
							<li><a href="javascript:void(0)">账号管理</a></li>
							<li><a href="javascript:void(0)">添加角色</a></li>
						</ol>
					</div>
				</div>
				<form class="form-horizontal" style="width: 900px;"
					action="/addUser" method="post">
					<h3 style="text-align: center;">添加用户</h3>

					<td><input name="isExist" class="isExist" value="1"
						style='display: none' /></td>

					<div class="form-group">
						<label class="col-sm-4 control-label">账号</label>
						<div class="col-sm-5">
							<input name="userName" type="text" class="form-control"
								placeholder="请输入用户账号">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label">密码</label>
						<div class="col-sm-5">
							<input id='nullpassword' type="password" class="form-control"
								placeholder="请输入密码" required>
						</div>
					</div>

					<td><input id='password' name="password" class="password"
						style='display: none'/></td>
						
					<div class="form-group">
						<label class="col-sm-4 control-label">姓名</label>
						<div class="col-sm-5">
							<input name="accountName" type="text" class="form-control"
								placeholder="请输入姓名">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label">性别</label>
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
							<input name="identification" type="text" class="form-control"
								placeholder="请输入身份证">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label">公司</label>
						<div class="col-sm-5">
							<select name="company" class="company form-control" required>
								<option value="">--请选择公司--</option>
								<c:forEach items="${listCompany}" var="c">
									<option value="${c.companyId }">${c.companyName}</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label">部门</label>
						<div class="col-sm-5">
							<select name="branch" class="branch form-control" required>
								<option value="">--请选择部门--</option>
								<c:forEach items="${listBranch}" var="b">
									<option style="display: none;" class="${b.companyId}"
										value="${b.branchId }">${b.branchName}</option>
								</c:forEach>
							</select>
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-4 control-label">岗位</label>
						<div class="col-sm-5">
							<select name="jobId" class="Job form-control" required>
								<option value="">--请选择岗位--</option>
								<c:forEach items="${listJob}" var="j">
									<option style="display: none;" class="${j.branchId}"
										value="${j.jobId}">${j.jobName}</option>
								</c:forEach>
							</select>
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-4 control-label">生日</label>
						<div class="col-sm-5">
							<input name="birthday" type="date" class="form-control"
								placeholder="请输入出生年月日" required>
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-4 control-label">邮箱</label>
						<div class="col-sm-5">
							<input name="email" type="email" class="form-control"
								placeholder="请输入邮箱">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label">电话</label>
						<div class="col-sm-5">
							<input name="phone" type="tel" class="form-control"
								placeholder="请输入电话">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label">备注</label>
						<div class="col-sm-5">
							<input name="remark" type="text" class="form-control"
								placeholder="请输入备注">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-5 col-sm-5">
							<button type="submit" class="btn btn-default">新建</button>
							<button type="submit" class="btn btn-default"
								onclick="javascript:history.back(-1);">返回</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		var all = 1;
		$(function() {
			$(".branch").change(function() {
				$(".job").val("");
				$("option." + all).css("display", "none");
				var b = $(".branch").val();
				all = b;
				$("option." + b).css("display", "block");
			});
		});

		$("#nullpassword").blur(function() {
			if ($("#nullpassword").val() != "") {
				var hash = hex_md5($("#nullpassword").val());
				document.getElementById("password").value = hash;
			}
		});
	</script>

	<script>
		var all = 1;
		$(function() {
			$(".company").change(function() {
				$(".branch").val("");
				$("option." + all).css("display", "none");
				var b = $(".company").val();
				all = b;
				$("option." + b).css("display", "block");

			});
		});
	</script>



</body>
</html>