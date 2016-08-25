<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用餐服务管理方</title>
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
    <div class="container  col-md-12" style="margin-left:5px;">
        <h3 style="text-align: center">申请情况</h3>
        <table class="table table-bordered">
            <tr>
                <th>编号</th>
                <th>所属公司</th>
                <th>申请部门</th>
                <th>申请人</th>
                <th>开始日期</th>
                <th>结束日期</th>
                <th>联系方式</th>
                <th>安排人数</th>
                <th>用餐类型</th>
                <th>审核状态</th>
            </tr>
            <c:forEach items="${dinnerPropertyList}" var="propertyList" varStatus="status">
            	<tr>
            		<td>${ status.index + 1}</td>
            		<td>${propertyList.companyName}</td>
            		<td>${propertyList.branchName}</td>
            		<td>${propertyList.applyUser}</td>
            		<td>${propertyList.startDate}</td>
            		<td>${propertyList.finishDate}</td>
            		<td>${propertyList.contactInfo}</td>
            		<td>${propertyList.arrangePersonCount}</td>
            		<td>${propertyList.dinnerType}</td>
            		<td>
				  		<c:choose>
				  			<c:when test = "${propertyList.status == 0}">
				  					未开始
				  			</c:when>
				  			<c:when test = "${propertyList.status == 1}">
				  					拒绝受理
				  			</c:when>
				  			<c:when test = "${propertyList.status == 2}">
				  					一审阶段
				  			</c:when>
				  		
				  			<c:when test = "${propertyList.status == 4}">
				  					一审拒绝
				  			</c:when>
				  			<c:when test = "${propertyList.status == 5}">
				  					二审阶段
				  			</c:when>
				  			<c:when test = "${propertyList.status == 6}">
				  					二审通过
				  			</c:when>
				  			<c:when test = "${propertyList.status == 7}">
				  					二审拒绝
				  			</c:when>
				  		</c:choose>
					</td>
            	</tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>