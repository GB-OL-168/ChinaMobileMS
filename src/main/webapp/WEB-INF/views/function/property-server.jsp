<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
	
	
	<link rel="stylesheet" href="/assets/css/test.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 物业服务管理</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
</head>
<body>

	<div class="container  col-md-12" style="margin-left:5px;">
		      
		<div class="row">
			<div class="col-md-12 main">
				<div class="row"> 
					<div class="col-md-5">
						<ol class="breadcrumb">
						  <li><a href="#">物业服务管理</a></li>
						  <li><a href="#">申请方应用</a></li>
						  <li class="dropdown active">
						  	<a href="/property/server" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">服务状态 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/property/applicant">申请表格
					          </ul>
						  </li>
						</ol>
					</div>
					<div class="col-md-3">
						<div class="dropdown active">
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">2016 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="property/applicant-server">2015
					            <li><a href="property/applicant-server">2014
					          </ul>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="input-group">
					      <input type="text" class="form-control input-sm" placeholder="Search for User">
					      <span class="input-group-btn">
					        <button class="btn btn-default btn-sm" type="button">Go!</button>
					      </span>
					    </div>
					</div>
				</div>
				

				<a class="btn btn-default btn-xs" href="system-user-add.html">01</a>
				<a class="btn btn-default btn-xs" href="system-user-add.html">02</a>
				<a class="btn btn-default btn-xs" href="system-user-add.html">03</a>

				              
				<table class="table table-bordered">
				  <tr>        
				  	<th>编号</th>
				  	<th>申请时间</th>
				  	<th>服务日期</th>
				  	<th>具体时间</th>
				  	<th>服务地点</th>
<!-- 				  	<th>申请人</th> -->
				  	<th>联系方式</th>
				  	<th>临时需求</th>
				  	<th>当前状态</th>
				  	<th>说明</th>
				  	<th>操作</th>
				  </tr>
				  
				  <c:forEach items="${listPropertyApplicant}" var="a"  varStatus="status">
				  <tr class="a">
				  	<td>${ status.index + 1}</td>
				  	<td>${a.applyTime}</td>
				  	<td>${a.serviceDate}</td>
				  	<td>${a.concreteTime}</td>
				  	<td class="serviceLocation">${a.serviceLocation }</td>
		<%-- 		  	<td class="applyUserName">${a.applyUserName}</td> --%>
				  	<td class="contactInfo">${a.contactInfo}</td>
				  	<td class="temporaryDemand">${a.temporaryDemand}</td>
				  	<td>${a.status}</td>
				  	<td style="display:none;" class="diningService">${a.diningService }</td>
				    <td style="display:none;" class="receptionService">${a.receptionService }</td>
				  	<td style="display:none;" class="enviromentMaintain">${a.enviromentMaintain }</td>
				  	<td style="display:none;" class="engineeringManage">${a.engineeringManage }</td>
				  	<td style="display:none;" class="firefightingManage">${a.firefightingManage }</td>
				  	<td style="display:none;" class="contactInfo">${a.contactInfo }</td>
				  	<td style="display:none;" class="serviceCommand">${a.serviceCommand }</td>
				  	<td style="display:none;" class="addition">${a.addition }</td>
	  	
				  	<td><a class="show" href="javascript:void(0)">查看</a></td>
<%-- 				  	<td><a href="/property/propertyApplicant/${a.propertyTableId}">update</a> | <a href="">remove</a></td>
 --%>				  	
				  	<td><a class="modify" href="javascript:void(0)">修改临时需求</a> <br> 
				  		<a class="check_view" href="javascript:void(0)">查看审核进度</a></td>
	              </tr>
				  </c:forEach>
				  
				</table>
			</div>
		</div>
	</div>
	
	
		
<!-- 	新添加的地方--> 

	<!-- 详细说明点击出现弹出窗 -->
	
	<div id="code">
		<div class="close1"><a href="javascript:void(0)" id="closebt1"><img src="/assets/img/close.gif"></a></div>
		<div class="goodtxt">

				<table class="table table-bordered table-hover">
				<h3 style="align-text:center">具体要求</h3>
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
	
	<!-- 修改临时需求弹出框 -->
	<div id="modify_div">
		<div class="close1"><a href="javascript:void(0)" id="closebt2"><img src="/assets/img/close.gif"></a></div>
		<div class="goodtxt">
			<table class="table table-bordered table-hover">
				<p style="align-text:center">修改临时需求</p>
				<textarea class="temporaryDemand" name="message" rows="4" cols="30"></textarea>
				<button class="btn btn-info" >修改</button>
				<button id="modify_closed_btn" class="btn btn-info" >返回</button>
			</table> 		
		</div>
	</div>
<!-- 	查看审核进度 -->
	<div id="check_div">
		<div class="close1"><a href="javascript:void(0)" id="closebt3"><img src="/assets/img/close.gif"></a></div>
		<div class="goodtxt">
			<table class="table table-bordered table-hover">
				<p style="align-text:center">目前审核进度</p>
				<p id="context">叶绪创已审核</p>
			</table> 		
		</div>
	</div>
	

	<script>
		$(function() {
			/*查看审核进度功能 */
			$('.check_view').click(function(){
				$('#check_div').center();
				$('#check_div').fadeIn();
			});
			
			
			
			/* 修改临时需求功能 */
			$('.modify').click(function(){
				var temporaryDemand=$(this).parent().siblings(".temporaryDemand").text();
				$("textarea.temporaryDemand").val(temporaryDemand);
				$('#modify_div').center();
				$('#modify_div').fadeIn();
			});
			

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
				
				
			$('#closebt1').click(function() {
				$('#code').hide();
			/* 	$('#goodcover').hide(); */
			});
			
			$('#closebt2').click(function() {
				$('#modify_div').hide();
			});
			
			$('#modify_closed_btn').click(function() {
				$('#modify_div').hide();
			});
			
			$('#closebt3').click(function() {
				$('#check_div').hide();
			});
			
		/* 	$('#goodcover').click(function() {
				$('#code').hide();
				$('#goodcover').hide();
			}); */
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