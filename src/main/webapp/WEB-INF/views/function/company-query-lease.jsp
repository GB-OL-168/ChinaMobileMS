<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="utf-8">
	<title>上市公司资产信息管理 - 信息查询</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>

</head>
<body>

	<div class="container" style="width:900px;">

		<div class="row">
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><a href="#">信息管理</a></li>
							<li><a href="#">上市公司资产信息</a></li>
							<li ><a href="#">信息查询</a> </li>
							<li class="dropdown active"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false">租赁设备查询 <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/companyquery/houses">房屋资产信息查询</a></li>
									<li><a href="/companyquery/rooms">房间信息查询</a></li>
									<li><a href="/companyquery/furniture">办公家具信息查询</a></li>
								</ul></li>
						</ol>
					</div>
					<hr>
					<form action="/searchLD" method="get"  style="width:900px;">
						<div class="col-md-offset-1 col-md-4">
							<input type="radio" name="loean" value="type">类型 <input
								type="radio" name="loean" value="brand">品牌/型号 <input
								type="radio" name="loean" value="batch">批次 <input
								type="radio" name="loean" value="loanInfoId"
								style="display: inline-block">设备编号
						</div>
						<div class="col-md-4">
							<div class="input-group">
								<input type="text" class="form-control input-sm"
									placeholder="请输入信息" name="search"> <span class="input-group-btn">
									<button class="btn btn-default btn-sm" type="submit">搜索</button>
								</span>
							</div>
						</div>
					</form>
				</div>
				<hr>

				<table class="table table-responsive table-bordered"  style="width:900px;">
					<h3 style="text-align: center;">租赁设备查询</h3>
					<tr>
						<th>批次</th>
						<th>类型</th>
						<th>品牌/型号</th>
						<th>规格</th>
						<th>到货日期</th>
						<th>数量</th>
						<th>使用年限(元)</th>
						<th>单位价值(元)</th>
						<th>总价值</th>
					</tr>
					<c:forEach items="${listald2}" var="a2">
						<tr>
						<td>${a2.orderNumber}</td>
						<td>${a2.loanInfoId}</td>
						<td>${a2.loanUserName}</td>
						<td>${a2.branchName}</td>
						<td>${a2.jobId}</td>
						<td>${a2.getDate}</td>
						<td>${a2.expiredDate}</td>
						<td><a href="">更新</a> | <a href="">删除</a></td>
						</tr>
					</c:forEach>


				</table>

			</div>
		</div>
	</div>

</body>
</html>