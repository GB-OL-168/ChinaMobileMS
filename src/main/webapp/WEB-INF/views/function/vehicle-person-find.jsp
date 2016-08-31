<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>全省车辆信息-驾驶员信息查询</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<link rel="stylesheet" href="/assets/css/vehicle-person-find.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
    <script src="/assets/js/fenye.js"></script> 

</head>
<body onLoad="goPage(1,10);">
        <div class="container" style="width:1100px;">
            <div class="row">
                <div class="col-md-12 main">
                    <div class="row">
                        <div class="col-md-12">
                            <ol class="breadcrumb">
                                <li>信息管理</li>
                                <li>全省车辆信息</li>
                                <li>信息查询</li>
                                <li class="dropdown active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">驾驶员信息查询 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="/vehicle/info-find">车辆信息查询</a></li>
                                    </ul>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <br>
                   	<form action = "/findVehiclePerson" method="post">
                        <div class="col-md-offset-3 col-md-3">
                            <input type="radio" name="condition" value="name" checked>姓名
                            <input type="radio" name="condition" value="sex">性别
                            <input type="radio" name="condition" value="serviceUnit">服务单位
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
            </div>
            <br>
            <table id="idData" class="table table-hover table-striped"  style="width:1100px;">
       <!--          <h4 style="text-align:center;">查询结果</h4> -->
                <tr>
                    <th class="name">姓名</th>
                    <th class="sex">性别</th>
                    <th class="birthday">出生日期</th>
                    <th class="driveYear">驾龄</th>
                    <th class="education">学历</th>
                    <th class="origin">籍贯</th>
                    <th class="serviceUnit">服务单位</th>
                    <th class="identification">身份证号</th>
                    <th class="contactInfo">联系方式</th>
                    <th class="homeAddress">家庭住址</th>
                    <th class="addition">备注</th>
                </tr>
                <c:forEach items="${listDriverInfo}" var="a">
				    <tr class="a">
						<td class="name">${a.name}</td>
						<td class="sex">
							<c:choose>
								<c:when test="${a.sex==1}">男</c:when>
								<c:when test="${a.sex==2}">女</c:when>
							</c:choose>
						</td>
						<td class="birthday">${a.birthday}</td>
						<td class="driveYear">${a.driveYear}</td>
						<td class="education">${a.education}</td>
						<td class="origin">${a.origin}</td>
						<td class="serviceUnit">${a.serviceUnit}</td>
						<td class="identification">${a.identification}</td>
						<td class="contactInfo">${a.contactInfo}</td>
						<td class="homeAddress">${a.homeAddress}</td>
						<td class="addition">${a.addition}</td>
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