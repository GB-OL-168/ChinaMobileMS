<%@page import="com.GB.ChinaMobileMS.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 物业服务管理</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<link rel="stylesheet" href="/assets/css/property-server.css">
	<script src="/assets/js/fenye.js"></script>
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<script src="/assets/js/property-server.js"></script>
</head>
<body onLoad="goPage(1,10)">

	<div class="container" style="width:1100px;">		      
		<div class="row">
			<div class="col-md-12">
				<div class="row"> 
					<div class="col-md-5">
						<ol class="breadcrumb">
						  <li><a href="#">物业服务管理</a></li>
						  <li><a href="#">申请方应用</a></li>
						  <li class="dropdown active">
						  	<a href="/property/server" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">服务状态 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/property/applicant">申请表格</a>
					          </ul>
						  </li>
						</ol>
					</div>	
				</div>

				<table id="idData" class="table table-bordered table-striped"  style="width:1100px;">
				  <!-- <h4 style="text-align:center">申请情况</h4> -->
				  <br>
				  <tr>        
				  	<th class="index">编号</th> 
				  	<th class="applyTime">申请时间</th>
				  	<th class="serviceDate">服务日期</th>
				  	<th class="concreteTime">具体时间</th>
				  	<th class="serviceLocation">服务地点</th>
				  	<th class="concreteTime">联系方式</th>
				  	<th class="TemporaryDemand">临时需求</th>
				  	<th class="status">当前状态</th>
				  	<th class="Show">说明</th>
				  	<th class="do">操作</th>
				  </tr>
				  
				  <c:forEach items="${listPropertyApplicant}" var="a"  varStatus="status">
				  <tr class="a">
				  	<td class="index">${ status.index + 1}</td> 
				  	<td class="applyTime">${a.applyTime}</td>
				  	<td class="serviceDate">${a.serviceDate}</td>
				  	<td class="concreteTime">${a.concreteTime}</td>
				  	<td class="serviceLocation">${a.serviceLocation }</td>
				  	<%-- <td class="applyUserName"><%=((User)session.getAttribute("user")).getAccountName() %></td> --%>
				  	<td class="contactInfo">${a.contactInfo}</td>
				  	<td class="temporaryDemand">${a.temporaryDemand}</td>
				  	<td class="status">
				  		<c:choose>
				  			<c:when test = "${a.status == 0}">
				  					未开始
				  			</c:when>
				  			<c:when test = "${a.status == 1}">
				  					拒绝受理
				  			</c:when>
				  			<c:when test = "${a.status == 2}">
				  					一审阶段
				  			</c:when>
				  			<c:when test = "${a.status == 4}">
				  					一审拒绝
				  			</c:when>
				  			<c:when test = "${a.status == 5}">
				  					二审阶段
				  			</c:when>
				  			<c:when test = "${a.status == 6}">
				  					二审通过
				  			</c:when>
				  			<c:when test = "${a.status == 7}">
				  					二审拒绝
				  			</c:when>
				  		</c:choose>
				  	</td>
				  	<td style="display:none"  class="statusId">${a.status}</td>
				  	<td style="display:none;" class="propertyTableId">${a.propertyTableId }</td>
				  	<td style="display:none;" class="diningService">${a.diningService }</td>
				    <td style="display:none;" class="receptionService">${a.receptionService }</td>
				  	<td style="display:none;" class="enviromentMaintain">${a.enviromentMaintain }</td>
				  	<td style="display:none;" class="engineeringManage">${a.engineeringManage }</td>
				  	<td style="display:none;" class="firefightingManage">${a.firefightingManage }</td>
				  	<td style="display:none;" class="contactInfo">${a.contactInfo }</td>
				  	<td style="display:none;" class="serviceCommand">${a.serviceCommand }</td>
				  	<td style="display:none;" class="addition">${a.addition }</td>
	  	
				  	<td class="Show"><a class="show" href="javascript:void(0)">查看</a></td>
			  	
				  	<td class="do"><a class="modify" href="javascript:void(0)">修改临时需求</a> <br> 
				  		<a class="check_view" href="javascript:void(0)">查看审核进度</a></td>
	              </tr>
				  </c:forEach>
				  
				</table>
			</div>
		</div>
	</div>
	 <br>
		<table width="70%" align="right">
	        <tr><td><div id="barcon" name="barcon"></div></td></tr>
	    </table>
	
		
			<!-- 	查看具体说明--> 
	<div id="code">
		<div class="title">
		    <span>具体要求</span>
		    <div class="close">
				<a href="javascript:void(0)" id="closebt1"><img src="/assets/img/close.gif"></a>
			</div>
		</div>
		<div class="goodtxt">

				<table class="table table-bordered table-striped table-condensed">
				<tr>
					<td style="width:100px;">礼仪接待</td>
					<td><p class="receptionService"></p></td>
				</tr>
				<tr>
					<td>就餐服务</td>
					<td><p class="diningService"></p></td>
				</tr>
				<tr>
					<td>环境维护</td>
					<td><p class="enviromentMaintain"></p></td>
				</tr>
				<tr><td>工程管理</td>
					<td><p class="engineeringManage"></p></td></tr>
				<tr><td>消防管理</td>
					<td><p class="firefightingManage"></p></td></tr>
				<tr><td>服务地点</td>
					<td><p class="serviceLocation"></p></td></tr>
				<tr><td>服务要求</td>
					<td><p class="serviceCommand"></p></td></tr>
				<tr><td>备注</td>
					<td><p class="addition"></p></td></tr>
			</table> 
		
		</div>

	</div>



	<!-- 修改临时需求弹出框 -->
	<div id="modify_div">
		<div class="title">
		    <span>修改临时需求</span>
		    <div class="close">
				<a href="javascript:void(0)" id="closebt2"><img src="/assets/img/close.gif"></a>
			</div>
		</div>
		<br>
		<div class="goodtxt">
			<table class="table table-bordered table-hover">
				<form action="/modifyTempDemand" method="post">
				    <input name="modify_id" style="display:none" class="propertyTableId"/>
					<textarea class="temporaryDemand" name="message" rows="8" cols="60"></textarea>
					<br><br>
			     	<input type="submit" class="btn btn-default btn-sm" value="修改">
			     	&nbsp&nbsp&nbsp&nbsp
					<button id="modify_closed_btn" class="btn btn-default btn-sm" >返回</button>
				</form>
			</table> 		
		</div>
	</div>
      	<!-- 	查看审核进度 -->
	<div id="check_div">
			<div class="title">
			    <span>目前审核进度</span>
			    <div class="close">
					<a href="javascript:void(0)" id="closebt"><img src="/assets/img/close.gif"></a>
				</div>
			</div>
			<div class="goodtxt">
			<table class="table table-bordered table-hover">
				<img class="context" />
			</table> 		
		</div>
	</div>

</body>

</html>