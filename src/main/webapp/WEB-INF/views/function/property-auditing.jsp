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
	<link rel="stylesheet" href="/assets/css/test.css">
</head>
<body>

	<div class="container" style="margin:30px;padding:0px;">
		      
		<div class="row">
	
			<div class="col-md-12 main">
				<div class="row"> 
					<div class="col-md-5">
						<ol class="breadcrumb">
						  <li><a href="#">物业服务管理</a></li>
						  <li><a href="#">审核方应用</a></li>
						</ol>
					</div>
					<div class="col-md-3">
						
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
				
				              
				<table id="a" class="table table-bordered">
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
				    <c:forEach items="${propertyServiceList}" var="a">
				  <tr class="a">
				  	<th>${a.propertyTableId}</th>
				  	<th>${a.applyTime}</th>
				  	<th>${a.serviceDate}</th>
				  	<th>${a.concreteTime}</th>
				  	<th>${a.serviceLocation}</th>
				  	<th>${a.applyUserName}</th>
				  	<th>${a.contactInfo}</th>
				  	<th>${a.temporaryDemand}</th>
				  	<th>${a.status}</th>
				  	<th style="display:none" class="receptionService">${a.receptionService}</th>
				  	<th style="display:none" class="olderMantain">${a.olderMantain }</th>
				  	<th style="display:none" class="diningService">${a.diningService }</th>
				  	<th style="display:none" class="enviromentMaintain">${a.enviromentMaintain }</th>
				  	<th style="display:none" class="engineeringManage">${a.engineeringManage }</th>
				  	<th style="display:none" class="firefightingManage">${a.firefightingManage }</th>
				  	<th style="display:none" class="addition">${a.addition }</th>
				  	<th><a href="javascript:void(0)">查看</a></th>
				  	<th>
				  	<c:choose>
				  		<c:when test="${a.status == 2 or a.status == 1}">
				  			不可操作
				  		</c:when>
				  		<c:otherwise>
				  			<a href="/property/propertyService/${a.propertyTableId}/${1}">同意</a> | <a href="/property/propertyService/${a.propertyTableId}/${2} " >不同意</a>
				  		</c:otherwise>
				  	</c:choose>
				 
				  	</th>
				  	
				  </tr>
				  </c:forEach>
				</table>
			</div>
		</div>
	</div>
	
	
<!-- 	新添加的地方
	
	<div id="goodcover"></div> --> 
	<div id="code">
		<div class="close1"><a href="javascript:void(0)" id="closebt"><img src="/assets/img/close.gif"></a></div>
		<div class="goodtxt">

				<table class="table table-bordered table-hover">
				<h3 style="align-text:center">具体要求</h3>
				<tr>
					<td>礼仪接待</td>
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

			$('.a>th>a').click(function() {
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
/* 				body_width = parseInt($(window).width());
				body_height = parseInt($(window).height());
				block_width = parseInt(obj.width());
				block_height = parseInt(obj.height());

				left_position = parseInt((body_width / 2) - (block_width / 2) + $(window).scrollLeft());
				if (body_width < block_width) {
					left_position = 0 + $(window).scrollLeft();
				};

				top_position = parseInt((body_height / 2) - (block_height / 2) + $(window).scrollTop());
				if (body_height < block_height) {
					top_position = 0 + $(window).scrollTop();
				}; */

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