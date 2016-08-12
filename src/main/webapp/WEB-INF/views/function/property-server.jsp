<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 物业服务管理</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
</head>
<body>

	<div class="container">
		      
		<div class="row">
			<div class="col-md-12 main">
				<div class="row"> 
					<div class="col-md-5">
						<ol class="breadcrumb">
						  <li><a href="#">物业服务管理</a></li>
						  <li><a href="#">申请方应用</a></li>
						  <li class="dropdown active">
						  	<a href="/property-?id=server" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">服务状态 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/property-?id=applicant">申请表格
					          </ul>
						  </li>
						</ol>
					</div>
					<div class="col-md-3">
						<div class="dropdown active">
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">2016 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="property-applicant-server.html">2015
					            <li><a href="property-applicant-server.html">2014
					          </ul>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="input-group">
					      <input type="text" class="form-control input-sm" placeholder="Search for User">
					      <span class="input-group-btn">
					        <button class="btn btn-default btn-sm" type="button">Go!</button>
					      </span>
					    </div>
					</div>
				</div>
				

				<a class="btn btn-default btn-xs" href="system-user-add.html">01</a>
				<a class="btn btn-default btn-xs" href="system-user-add.html">02</a>
				<a class="btn btn-default btn-xs" href="system-user-add.html">03</a>

				              
				<table class="table table-bordered">
				  <tr>        
				  	<th>编号</th>
				  	<th>申请时间</th>
				  	<th>服务日期</th>
				  	<th>具体时间</th>
				  	<th>服务地点</th>
				  	<th>申请人</th>
				  	<th>联系方式</th>
				  	<th>临时需求</th>
				  	<th>当前状态</th>
				  	<th>说明</th>
				  	<th>操作</th>
				  </tr>
				  <tr>
				  	<th>1</th>
				  	<th>zhangsan</th>
				  	<th>1234456</th>
				  	<th>成都移动</th>
				  	<th>权限1</th>
				  	<th>balabala</th>
				  	<th>balabala</th>
				  	<th>balabala</th>
				  	<th>balabala</th>
				  	<th>balabala</th>
				  	<th><a href="">update</a> | <a href="">remove</a></th>
				  </tr>
				  <tr>
				  	<th>1</th>
				  	<th>zhangsan</th>
				  	<th>1234456</th>
				  	<th>成都移动</th>
				  	<th>权限1</th>
				  	<th>balabala</th>
				  	<th>balabala</th>
				  	<th>balabala</th>
				  	<th>balabala</th>
				  	<th>balabala</th>
				  	<th><a href="">update</a> | <a href="">remove</a></th>
				  </tr>
				</table>
			</div>
		</div>
	</div>

</body>
</html>