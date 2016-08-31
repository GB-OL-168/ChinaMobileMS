<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用餐服务申请状态查看</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
    <script src="/assets/js/fenye.js"></script>
    <link rel="stylesheet" href="/assets/css/dinner-application-view.css">
</head>
<body onLoad="goPage(1,10);">
        <div class="container" style="width:1100px;">
            <div class="row">
                <div class="col-md-12">
                    <ol class="breadcrumb">
                        <li>配餐中心用餐申请</li>
   					    <li>申请方应用</li>
                        <li class="dropdown active">
						  	<a href="/property/server" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">服务状态 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/property/dinnerApplicant">申请表格</a>
					          </ul>
						  </li>
                    </ol>
                </div>
            </div>

            <!-- <h4 style="text-align: center">用餐申请状态</h4>  -->
            <table id="idData" class="table table-hover table-striped" style="width:1100px;">
                <tr>
                    <th class="index">编号</th>
                    <th class="applyTime">申请时间</th> 
                    <th class="startDate">开始日期</th>
                    <th class="finishDate">结束日期</th>
                    <th class="contactInfo">联系方式</th>
                    <th class="arrangePersonCount">安排人数</th>
                    <th class="dinnerType">用餐类型</th>
                    <th class="indadditionex">备注</th>
                    <th class="s">审核状态</th>
                    <th class="view">审核进度</th>
                </tr>
                
                <c:forEach items="${dinnerPropertys}" var="dinnerProperty"  varStatus="status">
                	<tr>
                    	<td class="index">${ status.index + 1}</td>
                     	<td class="applyTime">${dinnerProperty.applyTime}</td> 
                    	<td class="startDate">${dinnerProperty.startDate}</td>
                    	<td class="finishDate">${dinnerProperty.finishDate}</td>
                    	<td class="contactInfo">${dinnerProperty.contactInfo}</td>
                    	<td class="arrangePersonCount">${dinnerProperty.arrangePersonCount}</td>
                    	<td class="dinnerType">${dinnerProperty.dinnerType}</td>
                    	<td class="indadditionex">${dinnerProperty.addition}</td>
                    	<td class="status">
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
						</td>
						<td style="display:none"  class="statusId">${dinnerProperty.status}</td>
						<td class="view"><a class="check_view" href="javascript:void(0)">查看</a></td>
                	</tr>
                </c:forEach>
            </table>
 
        </div>
                
        <br>
		<table width="70%" align="right">
	        <tr><td><div id="barcon" name="barcon"></div></td></tr>
	    </table>
        
        <div id="check_div">
			<div class="title">
			    <span>目前审核进度</span>
			    <div class="close">
					<a href="javascript:void(0)" id="closebt"><img src="/assets/img/close.gif"></a>
				</div>
			</div>
			<div class="goodtxt">
			<table class="table table-bordered table-hover">
				<img class="context">
			</table> 		
			</div>
		</div>
		
		<script>
		$(function() {
			/*查看审核进度功能 */
			$('.check_view').click(function(){
				var statusId=$(this).parents().siblings(".statusId").html();
				var context;
				if(statusId=="0"){
					context = "未开始";
					$("img.context").attr('src','/assets/img/progress_0.png');
				};
				if(statusId=="1"){
					context = "未开始<br>丨<br>拒绝受理";
					$("img.context").attr('src','/assets/img/progress_1.png');
				};
				if(statusId=="2"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审";
					$("img.context").attr('src','/assets/img/progress_2.png');
				};
				if(statusId=="4"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审<br>丨<br>一审拒绝";
					$("img.context").attr('src','/assets/img/progress_4.png');
				};
				if(statusId=="5"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审<br>丨<br>一审通过<br>丨<br>等待二审";
					$("img.context").attr('src','/assets/img/progress_5.png');
				};
				if(statusId=="6"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审<br>丨<br>一审通过<br>丨<br>等待二审<br>丨<br>二审通过";
					$("img.context").attr('src','/assets/img/progress_6.png');
				};
				if(statusId=="7"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审<br>丨<br>一审通过<br>丨<br>等待二审<br>丨<br>二审拒绝";
					$("img.context").attr('src','/assets/img/progress_7.png');
				};
				$('#check_div').center();
				$('#check_div').fadeIn();
			});
			

			$('#closebt').click(function() {
				$('#check_div').hide();
			});
			
		
			jQuery.fn.center = function(loaded) {
				var obj = this;

				if (!loaded) {

					obj.css({
						'position': 'absolute'
					});
					obj.css({
						'top': ($(window).height() - $('#code').height()) * 0.05,
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