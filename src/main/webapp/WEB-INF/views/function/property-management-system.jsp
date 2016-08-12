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
			<div class="col-md-10 main">
				<div class="row"> 
					<div class="col-md-5">
						<ol class="breadcrumb">
						  <li><a href="#">物业服务管理</a></li>
						  <li><a href="#">管理方应用</a></li>
						  <li class="dropdown active">
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 系统参数<span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/property-?id=management">申请状态
					            </a></li>
					             <li><a href="/property-?id=management-system">服务数据
					            </a></li>
					          </ul>  
						  </li>
						</ol>
					</div>
					<div class="col-md-3">
						<a class="btn btn-default btn-xs" href="/property-?id=management-system-add">增加系统参数</a>
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
				                     
				<table class="table table-bordered">
				  <tr>                       
				  	<th>序号</th>
				  	<th>服务类型</th>
				  	<th>常规服务范围描述</th>
				  	<th>临时需求范围描述</th>
				  	<th>操作</th>
				  </tr>
				  <tr>
				  	<th>1</th>
				  	<th>zhangsan</th>
				  	<th>zhangsan</th>
				  	<th>1234456</th>
				  	<th><a href="">update</a> | <a href="">remove</a></th>
				  </tr>
				</table>
			</div>
		</div>
	</div>

</body>
</html>