<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>后勤服务中心管理信息系统 - 服务考评</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<style>
		th,td{
			text-align: center;
		}
	</style>
</head>
<body>
	 <div class="container " style="margin-left:20px;">
	  <div class="row">
			<div class="col-md-12 left">
				<h2>服务考评</h2>
				<!--<ul class="nav nav-tabs ">-->
					<!--<li  class='active'><a href="/service-management-check.html">查看考评表情况</a></li>-->
					<!--<li role="presentation"><a href="/service-management-send.html">发放考评表</a></li>-->
					<!--<li ><a href="/service-management-recycle.html" >回收考评表</a></li>-->
				<!--</ul>-->
					<div class="container">
						<h3 style="text-align: center">考评表列表</h3>
						<div class='col-md-12 '>
							<div class="container">
									<div class='col-md-8 '>
										<a href="/service/management-table-make"><button class="btn btn-info">新建考评表</button></a>
									</div>
									<div class='col-md-4 '>
										<input type="text" placeholder="请输入考评表名字"/>
										<input class="btn btn-default" type="submit" value="搜索"/>
									</div>
							</div>
							<table class='table table-bordered table-hover center'>
								<tr>
									<th>编号</th><th>考评表名字</th><th>状态</th><th>建表人员</th><th>回收时间</th><th>操作</th>
								</tr>
								<tr>
									<td>2</td><td><a href="/service/table-info">物业考评表</a></td><td>已发放</td><td>叶绪创</td><td>2016-8-30</td>
									<td><a href="/service/table-info"><button class='btn btn-info'>查看</button></a>
										&nbsp&nbsp<a href="/service/management-send"><button class='btn btn-info'>发放</button></a>
										&nbsp&nbsp<a href=""><button class='btn btn-info'>回收</button></a>
										&nbsp&nbsp<a href="/service/date-statistics"><button class='btn btn-info'>统计</button></a></td>
								</tr>
								<tr>
									<td>3</td><td><a href="">物业考评表</a></td><td>未发放</td><td>叶绪创</td><td>无</td>
									<td><button class='btn btn-info'>查看</button>&nbsp&nbsp<button class='btn btn-info'>发放</button>
										&nbsp&nbsp<button class='btn btn-info'>回收</button>
									&nbsp&nbsp<button class='btn btn-info'>统计</button></td>
								</tr>
								<tr>
									<td>6</td><td><a href="">物业考评表</a></td><td>已回收</td><td>叶绪创</td><td>2016-8-30</td>
									<td><button class='btn btn-info'>查看</button>&nbsp&nbsp<button class='btn btn-info'>发放</button>
										&nbsp&nbsp<button class='btn btn-info'>回收</button>
										&nbsp&nbsp<button class='btn btn-info'>统计</button></td>
								</tr>
								<tr>
									<td>10</td><td><a href="">物业考评表</a></td><td>已回收</td><td>叶绪创</td><td>2016-8-30</td>
									<td><button class='btn btn-info'>查看</button>&nbsp&nbsp<button class='btn btn-info'>发放</button>
										&nbsp&nbsp<button class='btn btn-info'>回收</button>
										&nbsp&nbsp<button class='btn btn-info'>统计</button></td>
								</tr>
							</table>
						</div>
					</div>
				
				
			</div>
			
			</div>
	  </div>
	
</body>
</html>