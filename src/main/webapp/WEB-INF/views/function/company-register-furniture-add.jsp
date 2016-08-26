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
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><a href="#">信息管理</a></li>
							<li><a href="#">上市公司资产信息</a></li>
							<li><a href="#">信息登记</a></li>
							<li class="dropdown active"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false">办公家具信息登记 <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/register/houses-add">房屋资产信息登记</a></li>
									<li><a href="/register/rooms-add">房间信息登记</a></li>
									<li><a href="/register/lease-add">租赁设备信息登记</a></li>
								</ul></li>
						</ol>
					</div>
				</div>

				<form class="form-horizontal" action="/addFurniture" method="get">
					<h3 style="text-align: center">办公家具信息登记</h3>
					<div class="form-group">
						<label class="col-sm-2 control-label">所属公司</label>
						<div class="col-sm-10">
							<select name="company" class="company form-control">
								<option value="">--请选择公司--</option>
								<c:forEach items="${listCompany}" var="c">
									<option value="${c.companyId }">${c.companyName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">所属部门</label>
						<div class="col-sm-10">
							<select class="branch form-control" name="usedBranchId">
								<option value="">--请选择部门--</option>
								<c:forEach items="${listBranch}" var="b">
									<option style="display: none;" class="${b.companyId}"
										value="${b.branchId }">${b.branchName}</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">所属建筑</label>
						<div class="col-sm-10">
							<select class="building form-control">
								<option value="">请选择建筑</option>
								<c:forEach items="${listash}" var="a">
									<option value="${a.assetInfoId}" class="${a.usedBranchId}">${a.buildingName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">房间编号</label>
						<div class="col-sm-10">
							<select class="room form-control" name="houseId">
								<option value="">请选择房间编号</option>
								<c:forEach items="${listRoom}" var="r">
									<option style="display: none;" class="${r.building}"
										value="${r.houseId}">${r.houseId}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">所属楼层</label>
						<div class="col-sm-10">
							<select class="floor form-control">
								<option value="">请选择楼层</option>
								<c:forEach items="${listRoom}" var="r">
									<option style="display: none;" class="${r.houseId}"
										value="${r.floor}">${r.floor}</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">家具类型</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="家具类型"
								name="furnitureType">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">品牌/型号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="品牌/型号"
								name="brand">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">规格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="规格"
								name="specification">
						</div>
					</div>
					<!-- 					<div class="form-group"> -->
					<!-- 						<label class="col-sm-2 control-label">使用公司</label> -->
					<!-- 						<div class="col-sm-10"> -->
					<!-- 							<select name="company" class="company1 form-control"> -->
					<!-- 								<option value="">--请选择公司--</option> -->
					<%-- 								<c:forEach items="${listCompany}" var="c"> --%>
					<%-- 									<option value="${c.companyId }">${c.companyName}</option> --%>
					<%-- 								</c:forEach> --%>
					<!-- 							</select> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<!-- 					<div class="form-group"> -->
					<!-- 						<label class="col-sm-2 control-label">使用部门</label> -->
					<!-- 						<div class="col-sm-10"> -->
					<!-- 							<select class="branch1 form-control" name="usedBranchId"> -->
					<!-- 								<option value="">--请选择部门--</option> -->
					<%-- 								<c:forEach items="${listBranch}" var="b"> --%>
					<%-- 									<option style="display: none;" class="${b.companyId}" --%>
					<%-- 										value="${b.branchId }">${b.branchName}</option> --%>
					<%-- 								</c:forEach> --%>
					<!-- 							</select> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<div class="form-group">
						<label class="col-sm-2 control-label">数量</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="数量"
								name="count">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">使用情况</label>
						<div class="col-sm-offset-2 col-sm-8">
							<input type="radio" name="usedSituation" value="1" />在用 <input
								type="radio" name="usedSituation" value="0" />闲置
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default col-sm-offset-4">登记</button>
							<a href="company-register-furniture.html" class="btn btn-default">返回</a>
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
	<script>
		var all = 1;
		$(function() {
			$(".building").change(function() {
				$(".room").val("");
				$("option." + all).css("display", "none");
				var b = $(".building").val();
				all = b;
				$("option." + b).css("display", "block");

			});
		});
	</script>
	<script>
		var all = 1;
		$(function() {
			$(".room").change(function() {
				$(".floor").val("");
				$("option." + all).css("display", "none");
				var b = $(".room").val();
				all = b;
				$("option." + b).css("display", "block");

			});
		});
	</script>
</body>
</html>