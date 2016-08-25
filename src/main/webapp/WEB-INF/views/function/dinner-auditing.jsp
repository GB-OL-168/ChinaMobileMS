<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用餐服务审核方</title>
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
            <h3 style="text-align: center">用餐申请情况</h3>
            <table class="table table-bordered">
                <tr>
                    <th>编号</th>
                    <th>申请人</th>
                    <th>开始日期</th>
                    <th>结束日期</th>
                    <th>联系方式</th>
                    <th>安排人数</th>
                    <th>用餐类型</th>
                    <th>审核状态</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${dinnerPropertys}" var="dinnerProperty"  varStatus="status">
                <tr>
                	<td>${ status.index + 1}</td>
                	<td>${dinnerProperty.applyOrChargeUserName}</td>
                	<td>${dinnerProperty.startDate}</td>
                	<td>${dinnerProperty.finishDate}</td>
                	<td>${dinnerProperty.contactInfo}</td>
                	<td>${dinnerProperty.arrangePersonCount}</td>
                	<td>${dinnerProperty.dinnerType}</td>
                	<td>
				  		<c:choose>
				  			<c:when test = "${dinnerProperty.status == 0}">
				  					未开始
				  			</c:when>
				  			<c:when test = "${dinnerProperty.status == 1}">
				  					拒绝受理
				  			</c:when>
				  			<c:when test = "${dinnerProperty.status == 2}">
				  					一审阶段
				  			</c:when>
				  			<%-- <c:when test = "${dinnerProperty.status == 3}">
				  					一审通过
				  			</c:when> --%>
				  			<c:when test = "${dinnerProperty.status == 4}">
				  					一审拒绝
				  			</c:when>
				  			<c:when test = "${dinnerProperty.status == 5}">
				  					二审阶段
				  			</c:when>
				  			<c:when test = "${dinnerProperty.status == 6}">
				  					二审通过
				  			</c:when>
				  			<c:when test = "${dinnerProperty.status == 7}">
				  					二审拒绝
				  			</c:when>
				  		</c:choose>
				  	<td>
				  	<c:choose>
				  		<c:when test="${dinnerProperty.status == 0 && dinnerProperty.currentUser == dinnerProperty.branchVertifyUser}">
				  			<a href="/property/dinnerAuditingControl/${dinnerProperty.dinnerPropertyTableId}/${2}">开始审核</a> | <a href="/property/dinnerAuditingControl/${dinnerProperty.dinnerPropertyTableId}/${1} " >拒绝受理</a>
				  		</c:when>
				  		
				  		<c:when test="${dinnerProperty.status == 2 && dinnerProperty.currentUser == dinnerProperty.branchVertifyUser}">
				  			<a href="/property/dinnerAuditingControl/${dinnerProperty.dinnerPropertyTableId}/${5}">通过</a> | <a href="/property/dinnerAuditingControl/${dinnerProperty.dinnerPropertyTableId}/${4} " >拒绝</a>
				  		</c:when>
				  		
				  		<c:when test="${dinnerProperty.status == 5 && dinnerProperty.currentUser == dinnerProperty.companyVertifyUser}">
				  			<a href="/property/dinnerAuditingControl/${dinnerProperty.dinnerPropertyTableId}/${6}">通过</a> | <a href="/property/dinnerAuditingControl/${dinnerProperty.dinnerPropertyTableId}/${7} " >拒绝</a>
				  		</c:when>
				  		
				  		<c:otherwise>
				  			无操作
				  		</c:otherwise>
				  	</c:choose>
				  	</td>
				  	</tr>
                </c:forEach>
            </table>
        </div>
</body>
</html>