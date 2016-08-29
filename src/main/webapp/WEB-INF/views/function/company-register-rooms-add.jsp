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

	<div class="container">
		<div class="row">
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><a href="#">信息管理</a></li>
							<li><a href="#">上市公司资产信息</a></li>
							<li><a href="#">信息登记 </a></li>
							<li class="dropdown active"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
									>房间信息登记 <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/register/houses-add">房屋资产信息登记</a></li>
									<li><a href="/register/furniture-add">办公家具信息登记</a></li>
									<li><a href="/register/lease-add">租赁设备信息登记</a></li>
								</ul></li>
						</ol>
					</div>
				</div>

				<form class="form-horizontal col-md-12" action="/addRoom" method="get">
					<h3 style="text-align: center;">房间信息登记</h3>
					<div class="form-group">
						<label class="col-sm-3 control-label">所属公司</label>
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
						<label class="col-sm-3 control-label">所属部门</label>
						<div class="col-sm-5">
							<select name=branch class="Branch form-control" required>
								<option value="">--请选择部门--</option>
								<c:forEach items="${listBranch}" var="b">
									<option style="display: none;" class="${b.companyId}"
										value="${b.branchId}">${b.branchName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">所属建筑</label>
						<div class="col-sm-5">
							<select name="assetInfoId" class="building form-control" required>
								<option value="">--请选择建筑--</option>
								<c:forEach items="${listash}" var="a">
									<option style="display: none;" class="${a.usedBranchId}"
										value="${a.assetInfoId}">${a.buildingName}</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">所属楼层</label>
						<div class="col-sm-5">
							<input name="floor" class="form-control" placeholder="仅支持数字" required
                       	 	onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">房间编号</label>
						<div class="col-sm-5">
							<input name="houseId" class="form-control" placeholder="仅支持数字" required
                       	 	onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">房间面积</label>
						<div class="col-sm-5">
							<input name="area" class="form-control" placeholder="仅支持数字" required
                       	 	onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-4 col-sm-5">
							<button type="submit" class="btn btn-default">登记</button>
							<button type="reset" class="btn btn-default">重置</button>
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
	<script>
		var all = 1;
		$(function() {
			$(".branch").change(function() {
				$(".building").val("");
				$("option." + all).css("display", "none");
				var b = $(".branch").val();
				all = b;
				$("option." + b).css("display", "block");
			});
		});
	</script>
</body>
</html>