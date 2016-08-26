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
							<li ><a href="#">信息查询</a> </li>
							<li class="dropdown active"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false">房间信息查询 <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/companyquery/houses">房屋资产信息查询</a></li>
									<li><a href="/companyquery/furniture">办公家具信息查询</a></li>
									<li><a href="/companyquery/lease">租赁设备信息查询</a></li>
								</ul></li>
						</ol>
					</div>
					<hr>
					<form action="/searchRoom" method="get">
						<div class="col-md-offset-1 col-md-4">
							<input type="radio" name="room" value="companyName">公司名称 <input
								type="radio" name="room" value="building">建筑名称 <input
								type="radio" name="room" value="area"
								style="display: inline-block">房间面积
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
			</div>

			<table class="table table-bordered">
				<h3 style="text-align: center;">房间信息查询</h3>
				<tr>
					<th>房间编号</th>
					<th>所属单位</th>
					<th>所属建筑</th>
					<th>房间面积(平方米)</th>
				</tr>
				<c:forEach items="${listroom}" var="r">
					<tr>
						<td>${r.houseId}</td>
						<td>${r.companyName}</td>
						<td>${r.buildingName}</td>
						<td>${r.area}</td>
					</tr>
				</c:forEach>


				<!-- 				<tr> -->
				<!-- 					<td>1</td> -->
				<!-- 					<td>四川移动成都分公司</td> -->
				<!-- 					<td>梦想大厦</td> -->
				<!-- 					<td>120</td> -->
				<!-- 				</tr> -->
			</table>

		</div>
	</div>
	</div>

</body>
</html>