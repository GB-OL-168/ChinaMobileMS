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
	<link rel="stylesheet" href="/assets/css/company-query-lease.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
		<script src="/assets/js/fenye.js"></script>
	
	<style>
		tr>th{
			text-align:center;
		}
	</style>

</head>
<body  onLoad="goPage(1,10);">
	<div class="container" style="width:1100px;">
		<div class="row">
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><a href="#">信息管理</a></li>
							<li><a href="#">上市公司资产信息</a></li>
							<li><a href="#">信息查询</a></li>
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
					<br><hr>
					<form action="/searchLD" method="get"  style="width:1100px;">
						<div class="col-md-offset-1 col-md-6">
							<input type="radio" name="loean" value="type" required>类型 <input
								type="radio" name="loean" value="brand" required>品牌/型号 <input
								type="radio" name="loean" value="batch" required>批次 <input
								type="radio" name="loean" value="loanInfoId" required
								style="display: inline-block">设备编号
						</div>
						<div class="col-md-5">
							<div class="input-group">
								<input type="text" class="form-control input-sm"
									placeholder="请输入信息" name="search"> <span class="input-group-btn">
									<button class="btn btn-default btn-sm" type="submit">搜索</button>
								</span>
							</div>
						</div>
					</form>
				</div>
				<br>

				<table id="idData" class="table table-responsive table-hover table-striped"  style="width:1100px;text-align: center;">
					<!-- <h4 style="text-align: center;">租赁设备查询</h4> -->
					<tr>
						<th class="batch">批次</th>
						<th class="type">类型</th>
						<th class="brand">品牌/型号</th>
						<th class="specification">规格</th>
						<th class="arrivalDate">到货日期</th>
						<th class="count">数量</th>
						<th class="allowUseYears">使用年限(年)</th>
						<th class="unitValue">单位价值(元)</th>
						<th class="allValue">总价值</th>
					</tr>
					<c:forEach items="${listald}" var="a">
						<tr>
							<td class="batch">${a.batch}</td>
							<td class="type">${a.type}</td>
							<td class="brand">${a.brand}</td>
							<td class="specification">${a.specification}</td>
							<td class="arrivalDate">${a.arrivalDate}</td>
							<td class="count">${a.count}</td>
							<td class="allowUseYears">${a.allowUseYears}年</td>
							<td class="unitValue">${a.unitValue}</td>
							<td class="allValue">${a.allValue}</td>
						</tr>
					</c:forEach>
				</table>

				<br>
				<table width="70%" align="right">
			        <tr><td><div id="barcon" name="barcon"></div></td></tr>
			    </table>
			
			</div>
		</div>
	</div>

</body>
</html>