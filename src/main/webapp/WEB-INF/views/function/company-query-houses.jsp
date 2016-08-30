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
	<style>
		tr>th{
			text-align:center;
		}
	</style>
</head>
<body onLoad="goPage(1,10);" >
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
				<br>
				<form action="/searchHouse" method="get">
					<div class="col-md-offset-1 col-md-6">
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
				<br><hr>
				<table id="idData" class="table table-responsive table-bordered  table-striped" style="text-align:center;">
					<h4 style="text-align:center;">查询结果 </h4>
					<tr>
						<th style="width:100px;">房屋编号</th>
						<th style="width:250px;">建筑名称</th>
						<th style="width:250px;">使用单位名称</th>
						<th style="width:200px;">坐落地点</th>
						<th style="width:150px;">建筑面积（m3）</th>
						<th style="width:150px;">查看具体信息</th>
					</tr>
					<c:forEach items="${listash}" var="a">
						<tr>
							<td style="width:100px;">${a.assetInfoId}</td>
							<td style="width:250px;">${a.buildingName}</td>
							<td style="width:250px;">${a.companyName}</td>
							<td style="width:200px;">${a.location}</td>
							<td style="width:150px;">${a.buildingArea}</td>
							<td style="width:150px;"><a href="/detailed/house/${a.assetInfoId}">查看</a></td>
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