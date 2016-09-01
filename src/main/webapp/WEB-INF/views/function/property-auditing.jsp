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
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<link rel="stylesheet" href="/assets/css/system-make.css">
	<script src="/assets/js/fenye.js"></script>
</head>
<body>

	<div class="container"  style="width:1100px;">      
		<div class="row">
			<div class="col-md-12 main">
				<div class="row"> 
					<div class="col-md-5">
						<ol class="breadcrumb">
						  <li><a href="#">物业服务管理</a></li>
						  <li><a href="#">审核方应用</a></li>
						  <li><a href="#">待审核申请</a></li>
						</ol>
					</div>
					<div class="col-md-3"></div>
				</div>
		          
				<table id="idData" class="table table-bordered table-hover table-striped" style="width:1100px;">
				<!-- <h4 style="text-align:center;">审核申请</h4> -->
				  <tr>        
				  	 <th>编号</th> 
				  	<th>申请时间</th>
				  	<th>服务日期</th>
				  	<th>具体时间</th>
				  	<th>服务地点</th>
				  	<th>申请人</th>
				  	<th>联系方式</th>
				  	<th>临时需求</th>
				  	<th>当前状态</th>
				  	<th>说明</th>
				  	<th>操作</th>
				  </tr>
			    <c:forEach items="${propertyServiceList}" var="a"  varStatus="status">
				  <tr class="a">
		 		 	<td>${ status.index + 1}</td> 
				  	<td>${a.applyTime}</td>
				  	<td>${a.serviceDate}</td>
				  	<td>${a.concreteTime}</td>
				  	<td>${a.serviceLocation}</td>
				  	<td>${a.applyUserName}</td>
				  	<td>${a.contactInfo}</td>
				  	<td>${a.temporaryDemand}</td>

				  	<td>
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
				  			<%-- <c:when test = "${a.status == 3}">
				  					一审通过
				  			</c:when> --%>
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
				  	</th>
				  	
				  	<!-- <th>详情</th> -->
				  	
				  	<%-- <th>${a.status}</th> --%>
				  	<td style="display:none" class="receptionService">${a.receptionService}</td>
				  	<td style="display:none" class="olderMantain">${a.olderMantain }</td>
				  	<td style="display:none" class="diningService">${a.diningService }</td>
				  	<td style="display:none" class="enviromentMaintain">${a.enviromentMaintain }</td>
				  	<td style="display:none" class="engineeringManage">${a.engineeringManage }</td>
				  	<td style="display:none" class="firefightingManage">${a.firefightingManage }</td>
				  	<td style="display:none" class="addition">${a.addition }</td>
				  	
				  	<td><a class="view" href="javascript:void(0)">查看</a></td>
				  	<td>
				  	<c:choose>
				  		<c:when test="${a.status == 0 && a.currentUser == a.branchVertifyUser}">
				  			<a href="/property/propertyService/${a.propertyTableId}/${2}">开始审核</a> | <a href="/property/propertyService/${a.propertyTableId}/${1} " >拒绝受理</a>
				  		</c:when>
				  		
				  		<c:when test="${a.status == 2 && a.currentUser == a.branchVertifyUser}">
				  			<a href="/property/propertyService/${a.propertyTableId}/${5}">通过</a> | <a href="/property/propertyService/${a.propertyTableId}/${4} " >拒绝</a>
				  		</c:when>
				  		
				  		<c:when test="${a.status == 5 && a.currentUser == a.companyVertifyUser}">
				  			<a href="/property/propertyService/${a.propertyTableId}/${6}">通过</a> | <a href="/property/propertyService/${a.propertyTableId}/${7} " >拒绝</a>
				  		</c:when>
				  		
				  		<c:otherwise>
				  			无操作
				  		</c:otherwise>
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
	</div>
	
	
<!-- 	新添加的地方--> 
	
	<div id="code">
		<div class="title">
		    <span>具体要求</span>
		    <div class="close">
				<a href="javascript:void(0)" id="closebt"><img src="/assets/img/close.gif"></a>
			</div>
		</div>
		<div class="goodtxt">

				<table class="table table-bordered table-hover">
			
				<tr>
					<td style="width:100px;">礼仪接待</td>
					<td><p class="receptionService"></p></td>
				</tr>
				<tr>
					<td>秩序维护</td>
					<td><p class="olderMantain"></p></td>
				</tr>
				<tr>
					<td>就餐服务</td>
					<td><p class="diningService"></p></td>
				</tr>
				<tr>
					<td>环境维护</td>
					<td><p class="enviromentMaintain"></p></td>
				</tr>
				<tr>
					<td>工程管理</td>
					<td><p class="engineeringManage"></p></td>
				</tr>
				<tr>
					<td>消防管理</td>
					<td><p class="firefightingManage"></p></td>
				</tr>
				<tr>
					<td>备注</td>
					<td><p class="addition"></p></td>
				</tr>
			</table> 
		
		</div>

	</div>

	<script>
		$(function() {

			$('.a>td>.view').click(function() {
				var receptionService=$(this).parent().siblings(".receptionService").text();
				var olderMantain=$(this).parent().siblings(".olderMantain").text();
				var diningService=$(this).parent().siblings(".diningService").text();
				var enviromentMaintain=$(this).parent().siblings(".enviromentMaintain").text();
				var engineeringManage=$(this).parent().siblings(".engineeringManage").text();
				var firefightingManage=$(this).parent().siblings(".firefightingManage").text();
				var addition=$(this).parent().siblings(".addition").text();
				$("p.receptionService").html(receptionService);
				$("p.olderMantain").html(olderMantain);
				$("p.diningService").html(diningService);
				$("p.enviromentMaintain").html(enviromentMaintain);
				$("p.engineeringManage").html(engineeringManage);
				$("p.firefightingManage").html(firefightingManage);
				$("p.addition").html(addition);

				$('#code').center();
				$('#goodcover').show();
				$('#code').fadeIn();
			});
			$('#closebt').click(function() {
				$('#code').hide();
				$('#goodcover').hide();
			});
			$('#goodcover').click(function() {
				$('#code').hide();
				$('#goodcover').hide();
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