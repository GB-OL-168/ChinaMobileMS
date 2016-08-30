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
    <script src="/assets/js/fenye.js"></script>
</head>
<body  onLoad="goPage(1,10);">
    <div class="container"  style="width:1100px;">
     <div class="row">
         <div class="col-md-12">
             <ol class="breadcrumb">
                 <li>配餐中心用餐申请</li>
                 <li>管理方应用</li>
                 <li class="dropdown active">
 				<a href="javascript:void(0)">管理状态</a></li>
             </ol>
         </div>
        <br>
        <table id="idData" class="table table-bordered col-md-12  table-striped" style="width:1100px;">
            <tr>
                <th style="width:50px;">编号</th>
                <th style="width:150px;">所属公司</th>
                <th style="width:200px;">申请部门</th>
                <th style="width:100px;">申请人</th>
                <th style="width:100px;">开始日期</th>
                <th style="width:100px;">结束日期</th>
                <th style="width:100px;">联系方式</th>
                <th style="width:100px;">安排人数</th>
                <th style="width:100px;">用餐类型</th>
                <th style="width:100px;">审核状态</th>
            </tr>
            <c:forEach items="${dinnerPropertyList}" var="propertyList" varStatus="status">
            	<tr>
            		<td style="width:50px;">${ status.index + 1}</td>
            		<td style="width:150px;">${propertyList.companyName}</td>
            		<td style="width:200px;">${propertyList.branchName}</td>
            		<td style="width:100px;">${propertyList.applyUser}</td>
            		<td style="width:100px;">${propertyList.startDate}</td>
            		<td style="width:100px;">${propertyList.finishDate}</td>
            		<td style="width:100px;">${propertyList.contactInfo}</td>
            		<td style="width:100px;">${propertyList.arrangePersonCount}</td>
            		<td style="width:100px;">${propertyList.dinnerType}</td>
            		<td style="width:100px;">
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
        
        <br>
		<table width="70%" align="right">
	        <tr><td><div id="barcon" name="barcon"></div></td></tr>
	    </table>
        
        
    </div>
    </div>
</body>
</html>