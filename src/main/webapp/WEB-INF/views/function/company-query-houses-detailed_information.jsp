<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		ol>li{
			font-size:18px;
		}
	</style>
</head>
<body>

	<div class="container" style="margin-left:20px;">
		
		<div class="row">
		
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
						  <li><a href="#">信息管理</a></li>
						  <li><a href="#">上市公司资产信息</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息查询 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="company-register-houses-add.html">信息登记</a></li>
									<li><a href="company-count.html">信息统计</a></li>
								</ul>
							</li>
						  <li class="dropdown active">
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">房屋资产信息查询 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="company-register-rooms.html">房间信息查询</a></li>
					            <li><a href="company-register-furniture.html">办公家具信息查询</a></li>
					            <li><a href="company-register-lease.html">租赁设备信息查询</a></li>
					          </ul>
						  </li>
						</ol>
					</div>

					<hr>
					<div class="col-sm-offset-8 col-md-4">
						<div class="input-group">
					      <input type="text" class="form-control input-sm" placeholder="请输入房屋名称">
					      <span class="input-group-btn">
					        <button class="btn btn-default btn-sm" type="button">搜索</button>
					      </span>
					    </div>
					</div>
				</div>
				    
				<table class="table table-bordered">
					<h3 style="text-align:center;">查询结果</h3>
				  <tr>
				  	<th>房屋编号</th>
					<th>建筑名称</th>
				  	<th>使用单位名称</th>
				  	<th>坐落地点</th>
				  </tr>
				  <tr>
				  	<td>1</td>
				  	<td>梦想大厦</td>
				  	<td>四川成都移动分公司</td>
					  <td>四川省成都市</td>
				  </tr>
					<tr>
						<th>建筑面积（m3）</th>
						<th>房屋间数</th>
						<th>结构类型</th>
						<th>房屋用途</th>
					</tr>
					<tr>
						<td>1000</td>
						<td>223</td>
						<td>楼房</td>
						<td>墓地</td>
					</tr>
					<tr>
						<th>建成年份</th>
						<th>是否租贷</th>
						<th>租贷来源</th>
						<th>租贷时间段</th>
					</tr>
					<tr>
						<td>2015-02-11</td>
						<td>否</td>
						<td>无</td>
						<td>2015-02-11至
							2017-02-11</td>
					</tr>
					<tr>
						<th>备注说明</th>
					</tr>
					<tr>
						<td>无</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

</body>
</html>