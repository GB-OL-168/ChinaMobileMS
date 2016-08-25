<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title>上市公司资产信息管理 - 信息登记</title>
<link rel="stylesheet" href="/assets/css/bootstrap.css">
<link rel="stylesheet" href="/assets/css/system.css">
<script src="/assets/js/jquery-1.9.1.js"></script>
<script src="/assets/js/bootstrap.js"></script>

<style>
ol>li {
	font-size: 18px;
}
</style>
</head>
<body>
	<div class="container" style="margin-left: 20px;">

		<div class="row">
			<div class="col-md-8 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><a href="#">信息管理</a></li>
							<li><a href="#">上市公司资产信息</a></li>
							<li><a href="#">信息登记 </a></li>
							<li class="dropdown active"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false">租赁设备信息登记 <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/register/houses-add">房屋资产信息登记</a></li>
									<li><a href="/register/rooms-add">房间信息登记</a></li>
									<li><a href="/register/furniture-add">办公家具信息登记</a></li>
								</ul></li>
						</ol>
					</div>
				</div>

				<form class="form-horizontal" action="/addLoanDevice" method="get">
					<h3 style="text-align: center">租贷设备信息登记</h3>
					<div class="form-group">
						<label class="col-sm-4 control-label">批次</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="批次"
								name="batch">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">类型</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="类型"
								name="type">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">品牌/型号</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="品牌/型号"
								name="brand">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">规格</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="规格"
								name="specification">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">到货日期</label>
						<div class="col-sm-8">
							<input type="date" class="form-control" placeholder="到货日期"
								name="arrivalDate">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">数量</label>
						<div class="col-sm-8">
							<input type="number" class="form-control" placeholder="数量"
								name="count">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">使用年限</label>
						<div class="col-sm-8">
							<input type="number" class="form-control" placeholder="使用年限"
								name="allowUseYears">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">单位价值</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="单位价值"
								name="unitValue">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">总价值</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="总价值"
								name="allValue">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">序号</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="序号"
								name="orderNumber">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">设备编号</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="设备编号"
								name="loanInfoId">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">公司</label>
						<div class="col-sm-8">
							<select name="company" class="company form-control">
								<option value="">--请选择公司--</option>
								<c:forEach items="${listCompany}" var="c">
									<option value="${c.companyId }">${c.companyName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">部门</label>
						<div class="col-sm-8">
							<select name="belongBranchId" class="branch form-control">
								<option value="">--请选择部门--</option>
								<c:forEach items="${listBranch}" var="b">
									<option style="display: none;" class="${b.companyId}"
										value="${b.branchId }">${b.branchName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">使用人</label>
						<div class="col-sm-8">
							<select name="loanUserName" class="loanUserName form-control">
								<option value="">--请选择使用人--</option>
								<c:forEach items="${listUser}" var="u">
									<option style="display: none;" class="${u.jobId}"
										value="${u.userName}">${u.userName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<!-- 				  <div class="form-group">   -->
					<!-- 				    <label class="col-sm-4 control-label">使用人员工编号</label> -->
					<!-- 				    <div class="col-sm-8"> -->
					<!-- 				      <input type="text" class="form-control"   placeholder="使用人员工编号"> -->
					<!-- 				    </div> -->
					<!-- 				  </div> -->
					<div class="form-group">
						<label class="col-sm-4 control-label">领用日期</label>
						<div class="col-sm-8">
							<input type="date" class="form-control" placeholder="领用日期"
								name="getDate">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">到期时间</label>
						<div class="col-sm-8">
							<input type="date" class="form-control" placeholder="到期时间"
								name="expiredDate">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-8">
							<button type="submit" class="btn btn-default col-sm-offset-4">登记</button>
							<a href="company-register-lease.html" class="btn btn-default">返回</a>
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
				$(".loanUserName").val("");
				$("option." + all).css("display", "none");
				var b = $(".branch").val();
				all = b;
				$("option." + b).css("display", "block");
			});
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