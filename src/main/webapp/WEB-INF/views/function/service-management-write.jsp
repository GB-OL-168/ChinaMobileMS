<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>后勤服务中心管理信息系统 - 服务考评</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<script src="/assets/js/fenye.js"></script>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<style>
		th,td{
			text-align: center;
		}
	</style>
</head>
<body>
	 <div class="container" style="width:900px;">
	  	<div class="row">
	  		<div class="col-md-12">
				<ol class="breadcrumb">
				  <li><a href="javascript:void(0)">后勤服务考评</a></li>
				  <li><a href="javascript:void(0)">物业服务考评</a></li>
				  <li class="dropdown active">
				  	<a href="javascript:void(0)">考评表填写</a></li>
				</ol>
			</div>
	  
			<div class="col-md-12 left">
				<div class="container">
					<h4 style="text-align: center">考评表列表</h4>
					<div class='col-md-12 '>
						<table id="idData" class='table table-bordered table-hover center'>
							<tr>
								<th>考评表名字</th><th>状态</th><th>建表人员</th><th>回收时间</th><th>操作</th>
							</tr>
							<c:forEach items="${investigationTableEntitySetList}" var="investigationTableEntitySetList">
							<tr>
								<td>${investigationTableEntitySetList.investigationTableName}</td>
								<td>
								<c:choose>
									<c:when test="${investigationTableEntitySetList.status==1}">
									已回收
									</c:when>
									<c:when test="${investigationTableEntitySetList.status==0}">
									未回收
									</c:when>
								</c:choose>
								</td>
								<td>${investigationTableEntitySetList.createStaff}</td>
								<td>${investigationTableEntitySetList.recoveryTime}</td>
								<td>
								<c:choose>
									<c:when test="${investigationTableEntitySetList.status==1}">
									已回收
									</c:when>
									<c:when test="${investigationTableEntitySetList.isFill==1}">
									已填写
									</c:when>
									<c:otherwise>
								<a href="/showWiriteInvestigationItems/${investigationTableEntitySetList.investigationId}"><button class='btn btn-info'>填写</button></a>
									</c:otherwise>
								</c:choose>
								</td>
							</tr>
							</c:forEach>
						</table>
						
					</div>
				
				</div>
					<br>
				<table width="70%" align="right">
			        <tr><td><div id="barcon" name="barcon"></div></td></tr>
			    </table>
			</div>	
		</div>
	  </div>
	
</body>
</html>