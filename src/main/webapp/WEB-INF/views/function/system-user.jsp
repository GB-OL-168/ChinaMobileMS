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
<link rel="stylesheet" href="/assets/css/system.css">
<script src="/assets/js/jquery-1.9.1.js"></script>
<script src="/assets/js/bootstrap.js"></script>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-10 main">
				<div class="row">
					<div class="col-md-5">
						<ol class="breadcrumb">
							<li><a href="#">系统设置</a></li>
							<li><a href="#">账号管理</a></li>
							<li class="active"><a href="#">用户列表</a></li>
						</ol>
					</div>
					<div class="col-md-3">
						<a class="btn btn-default btn-xs" href="system-?id=userAdd">增加用户</a>
					</div>

					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control input-sm"
								placeholder="搜索用户"> <span class="input-group-btn">
								<button class="btn btn-default btn-sm" type="button">搜索</button>
							</span>
						</div>
					</div>
				</div>


				<table class="table table-bordered">
					<h3 style="text-align: center;">设置系统角色</h3>
					<tr>
						<th>ID</th>
						<th>用户名</th>
						<th>操作</th>
					</tr>
					<tr>
						<th>1</th>
						<th>zhangsan</th>
						<th><a href="">修改资料</a> | <a href="">删除用户</a></th>
					</tr>

					<%-- <%
						List<Object> all = (List<Object>) request.getAttribute("listUser");
						System.out.println("jsp LIST:" + all);

						request.setAttribute("all", all);
						//后面进行循环遍历即可
					%> --%>

					
					<c:forEach items="${listUser}" var="a">
						<tr>
							
							<th>${a.userName}</th>
							<th>${a.jobId}</th>
							<th><a href="">修改资料</a> | <a href="">删除用户</a></th>
						</tr>
					</c:forEach>
					

				</table>
				
			</div>
		</div>
	</div>
</body>
</html>