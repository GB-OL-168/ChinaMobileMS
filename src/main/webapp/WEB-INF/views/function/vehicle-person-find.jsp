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
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
  
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
                    <hr>
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
            <table class="table table-bordered table-striped"  style="width:1050px;">
                <h4 style="text-align:center;">查询结果</h4>
                <tr>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>出生日期</th>
                    <th>驾龄</th>
                    <th>学历</th>
                    <th>籍贯</th>
                    <th>服务单位</th>
                    <th>身份证号</th>
                    <th>联系方式</th>
                    <th>家庭住址</th>
                    <th>备注</th>
                </tr>
                <c:forEach items="${listDriverInfo}" var="a">
				    <tr class="a">
					<td>${a.name}</td>
					<td>
						<c:choose>
							<c:when test="${a.sex==1}">男</c:when>
							<c:when test="${a.sex==2}">女</c:when>
						</c:choose>
					</td>
					<td>${a.birthday}</td>
					<td>${a.driveYear}</td>
					<td>${a.education}</td>
					<td>${a.origin}</td>
					<td>${a.serviceUnit}</td>
					<td>${a.identification}</td>
					<td>${a.contactInfo}</td>
					<td>${a.homeAddress}</td>
					<td>${a.addition}</td>
					</tr>
				</c:forEach>
            </table>
            
        </div>

</body>
</html>