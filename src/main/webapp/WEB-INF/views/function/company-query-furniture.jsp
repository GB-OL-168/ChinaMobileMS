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
								aria-haspopup="true" aria-expanded="false">办公家具信息查询 <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/companyquery/houses">房屋资产信息查询</a></li>
									<li><a href="/companyquery/rooms">房间信息查询</a></li>
									<li><a href="/companyquery/lease">租赁设备信息查询</a></li>
								</ul></li>
						</ol>
					</div>
					<hr>
					<form action="/searchASF"  method="get"  style="width:900px;">
						<div class="col-md-offset-1 col-md-4">
							 <input type="radio" name="asf" value="furnitureType" required>家具类型
							 <input type="radio" name="asf" value="brand" required>品牌型号 
							 <input type="radio" name="asf" value="branchName" required>所在部门 
							 <input type="radio" name="asf" value="building"style="display: inline-block" required>所在建筑
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
			
				<table class="table table-bordered"  style="width:900px;">
					<h4 style="text-align: center;">办公家具信息查询</h4>
					<tr>
						<th>编号</th>
						<th>家具类型</th>
						<th>品牌/型号</th>
						<th>规格</th>
						<!-- 				  	<th>花色</th> -->
						<th>使用部门</th>
						<th>所在建筑</th>
						<th>所在楼层</th>
						<th>所在房间号</th>
						<th>数量</th>
					</tr>
					<c:forEach items="${listasf}" var="a">
						<tr>
							<td>${a.officeFurnitureInfoId}</td>
							<td>${a.furnitureType}</td>
							<td>${a.brand}</td>
							<td>${a.specification}</td>
							<td>${a.branchName}</td>
							<td>${a.buildingName}</td>
							<td>${a.floor}</td>
							<td>${a.houseId}</td>
							<td>${a.count}</td>
						</tr>
					</c:forEach>
					<!-- 					<tr> -->
					<!-- 						<td>1</td> -->
					<!-- 						<td>床</td> -->
					<!-- 						<td>席梦思</td> -->
					<!-- 						<td>2米</td> -->
					<!-- 										  	<td>粉红</td> -->
					<!-- 						<td>营业部</td> -->
					<!-- 						<td>梦想大厦</td> -->
					<!-- 						<td>2层</td> -->
					<!-- 						<td>120</td> -->
					<!-- 						<td>1</td> -->
					<!-- 					</tr> -->



				</table>
			</div>
		</div>
	</div>
	</div>

</body>
</html>