<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>上市公司资产-房屋查询主界面</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<script src="/assets/js/fenye.js"></script>
	<script src="/assets/js/company-query.js"></script>
	<style>
		tr>th{
			text-align:center;
		}
	</style>
</head>
<body>
	<div class="container" style="width:1100px;">
		<div class="row">
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><a href="javascript:void(0)">信息管理</a></li>
							<li><a href="javascript:void(0)">上市公司资产信息</a></li>
							<li ><a href="javascript:void(0)">信息查询</a> </li>
							<li class="dropdown active"><a href="javascript:void(0)"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false">房屋资产查询 <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/companyquery/rooms">房间信息查询</a></li>
									<li><a href="/companyquery/furniture">办公家具信息查询</a></li>
									<li><a href="/companyquery/lease">租赁设备信息查询</a></li>
								</ul></li>
						</ol>
					</div>
				</div>
				<hr>
				<form action="/searchHouse" method="get">
					<div class="col-md-6">
						<span>请选择相关的搜索条件：</span>
						<input type="radio" name="houses" value="companyName" required>使用单位名称
						 <input type="radio" name="houses" value="buildingName" required>建筑名称
						  <input type="radio" name="houses" value="location" required>坐落地点 
						  <input type="radio" name="houses" value="buildingArea" required
							style="display: inline-block">建筑面积
				 	</div>
					<div class="col-md-4"> 
						<div class="input-group col-md-12"> 
							<input type="text" class="form-control input-sm" style="display:inline-block;"
								placeholder="请输入信息" name ="search">
							 <span class="input-group-btn"> 
								<button class="btn btn-default btn-sm" type="submit">搜索</button>
							</span> 
						</div> 
					</div>
				</form>
				<br><br>
				<table id="idData" class="table table-responsive table-hover  table-striped table-bordered" style="text-align:center;">
				 	<!-- <h4 style="text-align:center;">搜索结果 </h4>  -->
					<tr>
						<th>房屋编号</th>
						<th>建筑名称</th>
						<th>使用单位名称</th>
						<th>坐落地点</th>
						<th>建筑面积（m3）</th>
						<th>查看具体信息</th>
					</tr>
					<c:forEach items="${listash}" var="a">
						<tr>
							<td>${a.assetInfoId}</td>
							<td>${a.buildingName}</td>
							<td>${a.companyName}</td>
							<td>${a.location}</td>
							<td>${a.buildingArea}</td>
							<td><a href="/detailed/house/${a.assetInfoId}"><button class="btn btn-sm">查看</button></a></td>
						</tr>
					</c:forEach>
					<p id="flag" style="display:none;">${flag}</p>
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