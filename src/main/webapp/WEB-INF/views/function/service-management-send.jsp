<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>后勤服务中心管理信息系统 - 服务考评</title>
<link rel="stylesheet" href="/assets/css/bootstrap.css">
<link rel="stylesheet" href="/assets/css/system.css">
<script src="/assets/js/jquery-1.9.1.js"></script>
<script src="/assets/js/bootstrap.js"></script>
<meta name="description" content="">
<meta name="keywords" content="">
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12 left">
				<h2>服务考评</h2>
				<b>物业服务考评</b>
				<form class="form-horizontal"
					action="/sendServiceManagement2/${investigationId}" method="post">
					<div class="container">
						<div class='col-md-12 '>
							<h3 style="text-align: center">考评表发放情况</h3>
							<table class='table table-bordered table-hover center'>
								<tr>
									<th>考评表名字</th>
									<th>回收时间</th>
									<th>发送公司</th>
									<th>发送部门</th>
									<th>状态</th>
									<th>操作</th>
								</tr>

								<tr>
									<%!String investigationName;%>
									<%!int status;%>
									<%
										investigationName = (String) request.getAttribute("investigationName");
										status = (int) request.getAttribute("status");
									%>
									<td><%=investigationName%></td>
									<td><input name="recoveryTime" type="datetime-local"></td>
									<td>
										<div class="form-group">
											<div class="col-sm-5">
												<select style="width: 150px;" name="company"
													class="company form-control">
													<option value="">--请选择公司--</option>
													<c:forEach items="${listCompany}" var="c">
														<option value="${c.companyId }">${c.companyName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</td>

									<td>
										<div class="form-group">
											<div class="col-sm-5">
												<select style="width: 200px;" name="branchId" class="branch form-control">
													<option value="">--请选择部门--</option>
													<c:forEach items="${listBranch}" var="b">
														<option style="display: none;" class="${b.companyId}"
															value="${b.branchId}">${b.branchName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</td>

									<td>
										<c:choose>
											<c:when test="<%=status == 0%>">未发放</c:when>
											<c:when test="<%=status == 1%>">已发放</c:when>
											<c:when test="<%=status == 2%>">已回收</c:when>
										</c:choose>
									</td>
									<td><button type="submit" class='btn btn-info'>发放</button></td>
								</tr>
							</table>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>

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