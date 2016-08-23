<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 信息登记</title>
	<link rel="stylesheet" href="/四川移动后勤服务中心管理信息系统/css/bootstrap.css">
	<link rel="stylesheet" href="/四川移动后勤服务中心管理信息系统/css/system.css">
	<script src="/四川移动后勤服务中心管理信息系统/js/jquery-1.9.1.js"></script>
	<script src="/四川移动后勤服务中心管理信息系统/js/bootstrap.js"></script>
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
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息登记 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="company-register-houses.html">信息查询</a></li>
									<li><a href="company-count.html">信息统计</a></li>
								</ul>
							</li>
						  <li class="dropdown active">
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">房间信息登记 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="company-register-houses-add.html">房屋资产信息登记</a></li>
					            <li><a href="company-register-furniture-add.html">办公家具信息登记</a></li>
					            <li><a href="company-register-lease-add.html">租赁设备信息登记</a></li>
					          </ul>
						  </li>
						</ol>
					</div>
				</div>

				<form class="form-horizontal">
					<h3 style="text-align: center;">房间信息登记</h3>

					<div class="form-group">
						<label  class="col-sm-3 control-label">所属单位</label>
						<div class="col-sm-5">
							<select class="form-control">
								<option>四川移动分公司</option>
								<option>四川华迪分公司</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label  class="col-sm-3 control-label">所属建筑</label>
						<div class="col-sm-5">
							<select class="form-control">
								<option>创业大厦</option>
								<option>梦想大厦</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label  class="col-sm-3 control-label">所属楼层</label>
						<div class="col-sm-5">
							<select class="form-control">
								<option>一</option>
								<option>二</option>
								<option>三</option>
								<option>四</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">房间编号</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" placeholder="请输入房间编号">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">房间面积</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" placeholder="请输入房间面积">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-4 col-sm-5">
							<button type="submit" class="btn btn-default">登记</button>

						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>