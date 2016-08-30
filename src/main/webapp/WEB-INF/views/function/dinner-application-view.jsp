<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- <style>
        ol>li{
            font-size:18px;
        }
    </style> -->
    <style>
			*{margin:0;padding:0;list-style-type:none;}
			a,img{border:0;}
			/*按钮样式*/
			
			#code{
				border:1px solid black;
				width: 400px;
				height: 550px;
				background-color: #fff;
				padding: 10px;
				position: absolute;
				display: none;
				left: 45%;
				z-index: 1002;
			}
			#modify_div{	
				border:1px solid black;
				width: 450px;
				height: 200px;
				background-color: #fff;
				padding: 10px;
				position: absolute;
				display: none;
				left: 45%;
				z-index: 1002;
			}
			
			
			#check_div{
				border:1px solid black;
				width: 470px;
				height: 500px;
				background-color: #fff;
				padding: 10px;
				position: absolute;
				display: none;
				left: 45%;
				z-index: 1002;	
			}
			
			
			.close1 {
				width: 380px;
				height: 20px;
			}
			#closebt1 {
				float: right;
			}
			#closebt1 img {
				width: 20px;
				height:20px;
			}
			#closebt2 {
				float: right;
			}
			#closebt2 img {
				width: 20px;
				height:20px;
			}
			
			#closebt3 {
				float: right;
			}
			#closebt3 img {
				width: 20px;
				height:20px;
			}
			
			.goodtxt {
				text-align: center;
			}
			.goodtxt p {
				height: 30px;
				line-height: 30px;
				font-size: 16px;
				color: #000;
				font-weight: 600;
			}
			#code button{
				margin-left:80px;
			}
			#modify_div button{
				margin-left:15px;
			}
					
	</style>
</head>
<body>
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

            <h4 style="text-align: center">用餐申请状态</h4> 
            <table class="table table-bordered col-md-12">
                <tr>
                    <th>编号</th>
                    <th>申请时间</th>
                    <th>开始日期</th>
                    <th>结束日期</th>
                    <th>联系方式</th>
                    <th>安排人数</th>
                    <th>用餐类型</th>
                    <th>备注</th>
                    <th>审核状态</th>
                    <th>操作</th>
                </tr>
                
                <c:forEach items="${dinnerPropertys}" var="dinnerProperty"  varStatus="status">
                	<tr>
                    	<td>${ status.index + 1}</td>
                    	<td>${dinnerProperty.applyTime}</td>
                    	<td>${dinnerProperty.startDate}</td>
                    	<td>${dinnerProperty.finishDate}</td>
                    	<td>${dinnerProperty.contactInfo}</td>
                    	<td>${dinnerProperty.arrangePersonCount}</td>
                    	<td>${dinnerProperty.dinnerType}</td>
                    	<td>${dinnerProperty.addition}</td>
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
						<td><a class="check_view" href="javascript:void(0)">查看审核进度</a></td>
                	</tr>
                </c:forEach>
            </table>
        </div>
        
        <div id="check_div">
			<div class="close1"><a href="javascript:void(0)" id="closebt3"><img src="/assets/img/close.gif"></a></div>
			<div class="goodtxt">
			<table class="table table-bordered table-hover">
				<p style="align-text:center">目前审核进度</p>
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