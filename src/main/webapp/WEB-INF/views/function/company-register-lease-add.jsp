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
			<div class="col-md-8 main">
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
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">租赁设备信息登记 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="company-register-houses-add.html">房屋资产信息登记</a></li>
					            <li><a href="company-register-rooms-add.html">房间信息登记</a></li>
					            <li><a href="company-register-furniture-add.html">办公家具信息登记</a></li>
					          </ul>
						  </li>
						</ol>
					</div>
				</div>

				<form class="form-horizontal">
					<h3 style="text-align:center">租贷设备信息登记</h3>
					<div class="form-group">         
					    <label class="col-sm-4 control-label">批次</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control"   placeholder="批次">
					    </div>
					  </div>
				  <div class="form-group">
				    <label class="col-sm-4 control-label">类型</label>
				    <div class="col-sm-8">
				      <select class="form-control">
						  <option>01</option>
						  <option>02</option>
						</select>
				    </div>
				  </div>
				  <div class="form-group">         
				    <label class="col-sm-4 control-label">品牌/型号</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="品牌/型号">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">规格</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="规格">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-4 control-label">到货日期</label>
				    <div class="col-sm-8">
				      <input type="date" class="form-control"   placeholder="到货日期">
				    </div>
				  </div>
				  <div class="form-group">       
				    <label class="col-sm-4 control-label">数量</label>
				    <div class="col-sm-8">
				      <input type="number" class="form-control"   placeholder="数量">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">使用年限</label>
				    <div class="col-sm-8">
				      <input type="date" class="form-control"   placeholder="使用年限">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">单位价值</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="单位价值">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">总价值</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="总价值">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">序号</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="序号">
				    </div>
				  </div>
				  <div class="form-group">         
				    <label class="col-sm-4 control-label">设备编号</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="设备编号">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">使用人</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="使用人">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">所在部门</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="所在部门">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">使用人员工编号</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="使用人员工编号">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">领用日期</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="领用日期">
				    </div>
				  </div>
				  <div class="form-group">  
				    <label class="col-sm-4 control-label">到期时间</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control"   placeholder="到期时间">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-8">
				      <button type="submit" class="btn btn-default col-sm-offset-4">登记</button>
				      <a href="company-register-lease.html" class="btn btn-default">返回</a>
				    </div>
				  </div>
				</form>

			</div>
		</div>
	</div>

</body>
</html>