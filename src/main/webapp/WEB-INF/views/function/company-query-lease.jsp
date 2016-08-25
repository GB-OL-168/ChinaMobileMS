<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 信息查询</title>
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
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">租赁设备查询 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/companyquery/houses">房屋资产信息查询</a></li>
					            <li><a href="/companyquery/rooms">房间信息查询</a></li>
					            <li><a href="/companyquery/furniture">办公家具信息查询</a></li>
					          </ul>
						  </li>
						</ol>
					</div>
					<hr>
					<form action="">
						<div class="col-md-offset-1 col-md-4">
							<input type="radio" name="houses" value="company">公司名称
							<input type="radio" name="houses" value="building">建筑名称
							<input type="radio" name="houses" value="location">坐落地点
							<input type="radio" name="houses" value="area" style="display: inline-block">建筑面积
						</div>
						<div class="col-md-4">
							<div class="input-group">
								<input type="text" class="form-control input-sm"  placeholder="请输入信息">
                                <span class="input-group-btn">
                                <button class="btn btn-default btn-sm" type="button">搜索</button>
                              </span>
							</div>
						</div>
					</form>
				</div>
				<hr>
				                              
				<table class="table table-responsive table-bordered col-md-8">
					<h3 style="text-align:center;">查询结果</h3>
				  <tr>
				  	<th>批次</th>
				  	<th>类型</th>
				  	<th>品牌/型号</th>
				  	<th>规格</th>
				  	<th>到货日期</th>
				  	<th>数量</th>
				  	<th>使用年限</th>
				  	<th>单位价值</th>
				  	<th>总价值</th>
				  </tr>
				  <tr>
				  	<td>1</td>
				  	<td>打印机</td>
				  	<td>联想</td>
				  	<td>大型</td>
				  	<td>2015-09-12</td>
				  	<td>100</td>
				  	<td>2年</td>
				  	<td>2000</td>
				  	<td>200000</td>
				  </tr>

				  
				</table>


					<table class="table	table-responsive table-bordered col-md-8">
				  <tr>
				  	<th>序号</th>
				  	<th>设备编号</th>
				  	<th>使用人</th>
				  	<th>所在部门</th>
				  	<th>使用人员工编号</th>
				  	<th>领用日期</th>
				  	<th>到期时间</th>
				  	<th>操作</th>
				  </tr>
				  <tr>
				  	<td>1</td>
				  	<td>打印机</td>
				  	<td>叶绪创</td>
				  	<td>公关部</td>
				  	<td>110</td>
				  	<td>2015-05-01</td>
				  	<td>2017-06-17</td>
				  	<td><a href="">更新</a> | <a href="">删除</a></td>
				  </tr>

				  
				</table>

			</div>
		</div>
	</div>

</body>
</html>