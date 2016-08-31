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
	<link rel="stylesheet" href="/assets/css/vehicle-info-add.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
    <script src="/assets/js/fenye.js"></script>
</head>
<body  onLoad="goPage(1,10);">
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
                            <input type="text" name="queryInformation" class="form-control input-sm"  placeholder="请输入信息">
                                <span class="input-group-btn">
                                <button type="submit" class="btn btn-default btn-sm">搜索</button>
                              </span>
                        </div>
                    </div>
                </form>
                
            </div>
         	<br><br><hr>
            </div>
                <table id="idData" class="table table-hover table-striped" style="width:1100px;">
                    <tr>
                        <th class="brand">品牌</th>
                        <th class="model">型号</th>
                        <th class="vehicleType">类型</th>
                        <th class="seat">车座</th>
                        <!-- <th class="productSource">国产/进口</th> -->
                        <th class="color">颜色</th>
                        <th class="fuelType">燃油</th>
                        <th class="engineType">发动机号</th>
                        <th class="vin">VIN</th>
                        <th class="productDate">出厂日期</th>
                        <th class="owner">车主</th>
                        <th class="price">价格(万元)</th>
                        <th class="usedUnit">使用单位</th>
                    </tr>
                    
					<c:forEach items="${listVehicleInfoManage}" var="a">
						<tr class="a">
							<td class="brand">${a.brand}</td>
							<td class="model">${a.model}</td>
							<td class="vehicleType">${a.vehicleType}</td>
							<td class="seat">${a.seat}</td>
							<%-- <td class="productSource">
								<c:choose>
									<c:when test="${a.productSource==1}">国产</c:when>
									<c:when test="${a.productSource==2}">进口</c:when>
								</c:choose>
							</td> --%>
							<td class="color">${a.color}</td>
							<td class="fuelType">${a.fuelType}</td>
							<td class="engineType">${a.engineType}</td>
							<td class="vin">${a.vin}</td>
							<td class="productDate">${a.productDate}</td>
							<td class="owner">${a.owner}</td>
							<td class="price">${a.price}</td>
							<td class="usedUnit">${a.usedUnit}</td>
						</tr>
					</c:forEach>
                  </table>
                  <br>
         		<table width="70%" align="right">
		           <tr><td><div id="barcon" name="barcon"></div></td></tr>
		        </table>
          </div>
           
</body>
</html>