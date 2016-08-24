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
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息登记 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="company-register-houses.html">信息查询</a></li>
									<li><a href="company-count.html">信息统计</a></li>
								</ul>
							</li>
						  	<li class="dropdown active">
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">办公家具信息登记 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="company-register-houses-add.html">房屋资产信息登记</a></li>
					            <li><a href="company-register-rooms-add.html">房间信息登记</a></li>
					            <li><a href="company-register-lease-add.html">租赁设备信息登记</a></li>
					          </ul>
						  </li>
						</ol>
					</div>
				</div>
  
				<form class="form-horizontal" action="/addFurniture" method="get">
					<h3 style="text-align:center">办公家具信息登记</h3>
<!-- 					<div class="form-group"> -->
<!-- 						<label class="col-sm-2 control-label" >所属单位</label> -->
<!-- 						<div class="col-sm-10"> -->
<!-- 							<select class="form-control"> -->
<!-- 								<option>四川移动分公司</option> -->
<!-- 								<option>四川华迪分公司</option> -->
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="form-group"> -->
<!-- 						<label class="col-sm-2 control-label">所属建筑</label> -->
<!-- 						<div class="col-sm-10"> -->
<!-- 							<select class="form-control"> -->
<!-- 								<option>创业大厦</option> -->
<!-- 								<option>梦想大厦</option> -->
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="form-group"> -->
<!-- 						<label  class="col-sm-2 control-label">所属楼层</label> -->
<!-- 						<div class="col-sm-10"> -->
<!-- 							<select class="form-control"> -->
<!-- 								<option>一</option> -->
<!-- 								<option>二</option> -->
<!-- 								<option>三</option> -->
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 					</div> -->
					<div class="form-group">
						<label  class="col-sm-2 control-label">房间编号</label>
						<div class="col-sm-10">
							<select class="form-control" name=houseId>
								<option value="1">1</option>
								<option value="2">2</option>
<!-- 								<option value="124">124</option> -->
<!-- 								<option value="112">112</option> -->
<!-- 								<option value="321">321</option> -->
<!-- 								<option value="213">213</option> -->
							</select>
						</div>
					</div>
				  <div class="form-group">
				    <label  class="col-sm-2 control-label">家具类型</label>
				    <div class="col-sm-10">
				      <select class="form-control" name="furnitureType">
						  <option value="01">01</option>
						  <option value="02">02</option>
						</select>
				    </div>
				  </div>
				  <div class="form-group">         
				    <label  class="col-sm-2 control-label">品牌/型号</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="品牌/型号" name="brand">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-2 control-label">规格</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="规格" name="specification">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label  class="col-sm-2 control-label">使用部门</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="使用部门" name="usedBranchId">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label  class="col-sm-2 control-label">数量</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="数量" name="count">
				    </div>
				  </div>
					<div class="form-group">
						<label  class="col-sm-2 control-label">使用情况</label>
						<div class="col-sm-offset-2 col-sm-8">
							<input type="radio" name="usedSituation"value="1"/>在用
							<input type="radio"name="usedSituation"value="0"/>闲置
						</div>
					</div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default col-sm-offset-4">登记</button>
				      <a href="company-register-furniture.html" class="btn btn-default">返回</a>
				    </div>
				  </div>
				</form>

			</div>
		</div>
	</div>

</body>
</html>