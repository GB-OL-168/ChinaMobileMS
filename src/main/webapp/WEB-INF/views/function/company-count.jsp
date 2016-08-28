<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 统计分析</title>
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
							<li>
								<a href="#">信息统计</a>
							</li>
							<li><a href="#">统计分析</a></li>
						</ol>
					</div>
				</div>

				<h4 style="text-align:center;">资产统计</h4>
				<table class="table	table-responsive table-bordered col-md-12" style="width:900px;">
				  <tr>
					  <th>公司编号</th>
				  	<th>公司名称</th>
				  	<th>房屋总数</th>
				    <th>房间总数</th>
				    <th>办公家具总数</th>
				  	<th>租贷设备总数</th>
				  </tr>
				  <tr>
					  <td>1</td>
				  	<td>四川华迪有限公司</td>
				  	<td>2</td>
					  <td>900</td>
					  <td>1166</td>
					  <td>1162</td>
				  </tr>
					<tr>
						<th>所属建筑</th>
						<th>层数</th>
						<th>房间总数</th>
						<th>办公家具数量</th>
						<th>租贷设备数量</th>
						<th>查看详情</th>
					</tr>
					<tr>
						<td>梦想大厦</td>
						<td>3</td>
						<td>500</td>
						<td>233</td>
						<td>231</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr>
						<td>创业大厦</td>
						<td>8</td>
						<td>400</td>
						<td>933</td>
						<td>931</td>
						<td><a href="">查看</a></td>
					</tr>
				</table>
				<h3 style="text-align:center;">家具统计</h3>
				<table class="table	table-responsive table-bordered col-md-8">
					<tr>
						<th>家具类型</th>
						<th>家具总数</th>
						<th>家具总价值</th>
					</tr>
					<tr>
						<td>床</td>
						<td>200</td>
						<td>500000</td>
					</tr>
					<tr>
						<td>椅子</td>
						<td>832</td>
						<td>400213</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

</body>
</html>