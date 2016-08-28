<%@page import="com.GB.ChinaMobileMS.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 物业服务管理</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<link rel="stylesheet" href="/assets/css/propetry-management.css"/>
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
</head>
<body>

	<div class="container" style="width:920px;">		      
		<div class="row">
			<div class="col-md-12 main">
				<div class="row"> 
					<div class="col-md-5">
						<ol class="breadcrumb">
						  <li><a href="#">物业服务管理</a></li>
						  <li><a href="#">管理方应用</a></li>
						  <li><a href="#">申请状态 </a></li>
						</ol>
					</div>
					<div class="col-md-3"></div>
				</div>           
				<table class="table table-bordered" style="width:920px;">
					<h4 style="text-align:center;">审核情况</h4>
				  <tr>        
				   	<th>编号</th> 
				  	<th>申请时间</th>
				  	<th>服务日期</th>
				  	<th>地点</th>
				  	<th>申请公司</th>
				  	<th>申请部门</th>
				  	<th>申请人</th>
				  	<th>联系方式</th>
				  	<th>状态</th>
				  	<th>说明</th>
				  </tr>
				  <c:forEach items="${propertyList}" var="propertyList" varStatus="status">
				  <tr>
				   	<td>${ status.index + 1}</td> 
				  	<td>${propertyList.applyTime }</td>
				  	<td>${propertyList.serviceDate }</td>
				  	<td>${propertyList.serviceLocation }</tdh>
				  	<td>${propertyList.companyName }</td>
				  	<td>${propertyList.branchName }</td>
				  	<td>${propertyList.applyUser }</td>
				  	<td>${propertyList.contactInfo }</td>
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
					
			    	<td style="display:none"  class="statusId">${propertyList.status}</td>
				  	<td style="display:none;" class="diningService">${propertyList.diningService }</td>  
				    <td style="display:none;" class="receptionService">${propertyList.receptionService }</td>
				  	<td style="display:none;" class="enviromentMaintain">${propertyList.enviromentMaintain }</td>
				  	<td style="display:none;" class="engineeringManage">${propertyList.engineeringManage }</td>
				  	<td style="display:none;" class="firefightingManage">${propertyList.firefightingManage }</td>
				  	<td style="display:none;" class="contactInfo">${propertyList.contactInfo }</td>
				  	<td style="display:none;" class="serviceCommand">${propertyList.serviceCommand }</td>
				  	<td style="display:none;" class="serviceLocation">${propertyList.serviceLocation }</td>
				  	<td style="display:none;" class="addition">${propertyList.addition }</td> 
				  	
					<td><a class="show" href="javascript:void(0)">查看</a></td>
				  </tr>
				  </c:forEach>
				</table>
			</div>
		</div>
	</div>

	<div id="code">
		<div class="title">
		    <span>具体要求</span>
		    <div class="close">
				<a href="javascript:void(0)" id="closebt"><img src="/assets/img/close.gif"></a>
			</div>
		</div>
		<div class="goodtxt">
			<table class="table table-bordered table-hover">
				<tr><td>礼仪接待</td>
					<td><p class="receptionService"></p></td></tr>
				<tr><td>就餐服务</td>
					<td><p class="diningService"></p></td></tr>
				<tr><td>环境维护</td>
					<td><p class="enviromentMaintain"></p></td></tr>
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
	
	<script>
		$(function() {
			
				/* 查看需求点击详情功能 */
			$('.show').click(function() {
				var receptionService=$(this).parent().siblings(".receptionService").text();
				
				var diningService=$(this).parent().siblings(".diningService").text();
				var enviromentMaintain=$(this).parent().siblings(".enviromentMaintain").text();
				var engineeringManage=$(this).parent().siblings(".engineeringManage").text();
				var firefightingManage=$(this).parent().siblings(".firefightingManage").text();
				var addition=$(this).parent().siblings(".addition").text();
				var serviceLocation=$(this).parent().siblings(".serviceLocation").text();
				var serviceCommand=$(this).parent().siblings(".serviceCommand").text();				
				$("p.receptionService").html(receptionService);
				
				$("p.diningService").html(diningService);
				$("p.enviromentMaintain").html(enviromentMaintain);
				$("p.engineeringManage").html(engineeringManage);
				$("p.firefightingManage").html(firefightingManage);
				$("p.addition").html(addition);
				$("p.serviceLocation").html(serviceLocation);
				$("p.serviceCommand").html(serviceCommand);
				

				$('#code').center();
			/* 	$('#goodcover').show(); */
				$('#code').fadeIn();
			});
				
				
			$('#closebt').click(function() {
				$('#code').hide();
			});
			
		
		
			jQuery.fn.center = function(loaded) {
				var obj = this;

				if (!loaded) {

					obj.css({
						'position': 'absolute'
					});
					obj.css({
						'top': ($(window).height() - $('#code').height()) * 0.2,
						'left': 300
							/* left_position */
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
						'position': 'absolute'
					});
					obj.animate({
						'top':100 
							/* top_position */
					}, 200, 'linear');
				}
			}

		});
	</script>
</body>
</html>