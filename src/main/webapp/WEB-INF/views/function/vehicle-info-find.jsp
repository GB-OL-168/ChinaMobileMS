<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>全省车辆信息-车辆信息登记</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
<!-- 	<link rel="stylesheet" href="/assets/css/vehicle-info-add.css">
 -->		
	<link rel="stylesheet" href="/assets/css/system-make.css">
 	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
    <script src="/assets/js/fenye.js"></script>
</head>
<body>
    <div class="container" style="width:1100px;">
        <div class="row">
            <div class="col-md-12 main">
                <div class="row">
                    <div class="col-md-12">
                        <ol class="breadcrumb">
                            <li>信息管理</li>
                            <li>全省车辆信息</li>
                            <li>信息查询 </a></li>
                            <li class="dropdown active">
                                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">车辆信息查询 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/vehicle/person-find">驾驶员信息查询</a></li>
                                </ul>
                            </li>
                         </ol>
                     </div>
                 </div>
                <br>
               	<form action = "/findVehicleInfo" method="post">
                    <div class="col-md-offset-1 col-md-5">
                        <input type="radio" name="condition" value="brand" checked>品牌
                        <input type="radio" name="condition" value="model">型号
                        <input type="radio" name="condition" value="vehicleType">车辆类型
                        <input type="radio" name="condition" value="seat">车座
                        <input type="radio" name="condition" value="usedUnit">使用单位
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <input type="text" name="queryInformation" class="form-control input-sm" maxlength="10" placeholder="请输入信息，10个字符以内">
                                <span class="input-group-btn">
                                <button type="submit" class="btn btn-default btn-sm">搜索</button>
                              </span>
                        </div>
                    </div>
                </form>
                
         	<br><br>
            </div>
                <table id="idData" class="table table-hover table-striped table-bordered" style="width:1100px;">
                    <tr>
                    	<th>编号</th>
                        <th>品牌</th>
                        <th>型号</th>
                        <th>类型</th>
                        <th>车座</th>
                        <th>国产/进口</th>
                        <th>颜色</th>
                        <!-- <th>燃油</th>
                        <th>发动机号</th>
                        <th>VIN</th> -->
                        <th>出厂日期</th>
                        <th>车主</th>
                        <th>价格(万元)</th>
                        <th>使用单位</th>
                        <th>操作</th>
                    </tr>
                    
					<c:forEach items="${listVehicleInfoManage}" var="a" varStatus="status">
						<tr class="a">
							<td class="vehicleInfoId" style="display: none">${a.vehicleInfoId}</td>
							<td>${ status.index + 1}</td>
							<td class="brand">${a.brand}</td>
							<td class="model">${a.model}</td>
							<td>${a.vehicleType}</td>
							<td>${a.seat}</td>
							<td>
								<c:choose>
									<c:when test="${a.productSource==1}">国产</c:when>
									<c:when test="${a.productSource==2}">进口</c:when>
								</c:choose>
							</td>
							<td>${a.color}</td>
							<td class="fuelType" style="display: none">${a.fuelType}</td>
							<td class="engineType" style="display: none">${a.engineType}</td>
							<td class="vin" style="display: none">${a.vin}</td>
							<td>${a.productDate}</td>
							<td class="owner">${a.owner}</td>
							<td>${a.price}</td>
							<td class="usedUnit">${a.usedUnit}</td>
							<td><a class="modify" href="javascript:void(0)">修改</a>|
							<a href="/deleteVehicleInfo/${a.vehicleInfoId}" onclick="javascript:if(confirm('确定要删除此信息吗？'))
							{alert('删除成功！');return true;}return false;">删除</a></td>
						</tr>
					</c:forEach>
                  </table>
                  <br>
         		<table width="70%" align="right">
		           <tr><td><div id="barcon" name="barcon"></div></td></tr>
		        </table>
          </div>
      </div> 
      
       <!-- 	新添加的地方-->
	<div id="code">
		<div class="title">
		    <span>相关信息</span>
		    <div class="close">
				<a href="javascript:void(0)" id="closebt"><img src="/assets/img/close.gif"></a>
			</div>

		</div>
		<form action="/updateVehicleInfo" method="post">
			<div class="goodtxt">

				<table class="table table-bordered table-hover">
					<input type="hidden" name="vehicleInfoId" class="vehicleInfoId" />
					<tr>
						<td>品牌</td>
						<td><input name="brand" class="brand" disabled/></td>
					</tr>
					<tr>
						<td>型号</td>
						<td><input name="model" class="model" disabled/></td>
					</tr>
					<tr>
						<td>燃油</td>
						<td><input name="fuelType" class="fuelType" disabled/></td>
					</tr>
					<tr>
						<td>发动机号</td>
						<td><input name="engineType" class="engineType" disabled/></td>
					</tr>
					<tr>
						<td>VIN</td>
						<td><input name="vin" class="vin" disabled/></td>
					</tr>
					<tr>
						<td>车主</td>
						<td><input name="owner" class="owner" maxlength="5"/></td>
					</tr>
					<tr>
						<td>使用单位</td>
						<td><input name="usedUnit" class="usedUnit" maxlength="10"/></td>
					</tr>

				</table>
			</div>
			<button type="submit" class="btn btn-sm one" onclick="javascript:if(confirm('确定要修改此信息吗？'))
							{alert('修改成功！');return true;}return false;">修改</button>
			<button class="btn btn-sm one">返回</button>
		</form>
	</div>

	<script>
		$(function() {
			$('.a>td>.modify').click(
					function() {
						var vehicleInfoId = $(this).parent().siblings(".vehicleInfoId").text();
						var brand = $(this).parent().siblings(".brand").text();
						var model = $(this).parent().siblings(".model").text();
						var fuelType = $(this).parent().siblings(".fuelType").text();
						var engineType = $(this).parent().siblings(".engineType").text();
						var vin = $(this).parent().siblings(".vin").text();
						var owner = $(this).parent().siblings(".owner").text();
						var usedUnit = $(this).parent().siblings(".usedUnit").text();

						$("input.vehicleInfoId").val(vehicleInfoId);
						$("input.brand").val(brand);
						$("input.model").val(model);
						$("input.fuelType").val(fuelType);
						$("input.engineType").val(engineType);
						$("input.vin").val(vin);
						$("input.owner").val(owner);
						$("input.usedUnit").val(usedUnit);

						$('#code').center();
						$('#goodcover').show();
						$('#code').fadeIn();
					});
			$('#closebt').click(function() {
				$('#code').hide();
			});
			$(".one").click(function(e){
				$('#code').hide();
				e.preventDefault();
			});
			jQuery.fn.center = function(loaded) {
				var obj = this;

				if (!loaded) {

					obj.css({
						'position' : 'absolute'
					});
					obj.css({
								'top' : ($(window).height() - $('#code')
										.height()) * 0.2,
								'left' : 300
							});
					$(window).bind('resize', function() {
						obj.center(!loaded);
					});
					$(window).bind('scroll', function() {
						obj.center(!loaded);
					});

				} else {
					obj.stop();
					obj.css({
						'position' : 'absolute'
					});
					obj.animate({
						'top' : 100
					}, 200, 'linear');
				}
			}

		});
	</script> 
</body>
</html>