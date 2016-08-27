<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="java.net.MalformedURLException"%>
<%@page import="java.net.URL"%>
<%@page import="java.util.Map"%>
<%@page import="com.GB.ChinaMobileMS.activiti_util.XmlParser"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>四川移动后勤服务中心管理系统</title>
    <link href="/assets/css/index.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/left.css" rel="stylesheet" type="text/css"/>
	<link href="/assets/css/font-awesome.css" rel="stylesheet"type="text/css" />
</head>
<body>
		<!-- <iframe src="/u/top" style="width:100%; height:100px;" scrolling="no" frameborder="0" border="0"></iframe> -->
		<!--<iframe src="/u/left" style="width:16%; height:900px;" scrolling="no" frameborder="0" border="0"></iframe> -->
   		<div >	
		    <!--顶层-->
		    <div class="top">
		        <div class="account_info">
		            <a href="#"><span class="user_name">${user.userName}</span>  </a>
		            <a href="#"> <span class="account_name">${user.accountName}</span></a>
	                <a href="/logout2" target="_top"><span>退出登录</span></a>
		        </div>
		    </div>
		</div>
			
				<!--左边-->
		<div class="left">
<!-- 			<div class="container">
				<div class="row"> -->
					<ul class="menu">
						<li><a href="javscript:void(0)"><i class="icon-cogs icon-2x"></i>&nbsp&nbsp<strong>系统设置</strong>
							&nbsp&nbsp<span class="caret"></span></a>
							<ul>
								<li><a href="javascript:void(0)">账号管理</a>
									<ul>
										<li><a href="/system/user" target="/u/main">用户列表</a></li>
										<li><a href="/user-add" target="/u/main">增加用户</a></li>
									</ul>
								</li>
								<li><a href="javascript:void(0)">权限设置</a>
									<ul>
										<li><a href="/system/role-assignment" target="/u/main">角色分配</a></li>
										<li><a href="/system/role-authorization" target="/u/main">角色授权</a></li>
										<li><a href="/system/role-authorization-add" target="/u/main">新增系统角色</a></li>
									</ul>
								</li>
								<li><a href="/system/parameter" target="/u/main">参数配置</a></li>
								<li><a href="/system/data" target="/u/main">数据备份</a></li>
							</ul></li>
						<li><a href="#"><i class="icon-bar-chart icon-2x"></i>&nbsp&nbsp<strong>信息管理平台</strong>
							<span class="caret"></span></a>
							<ul>
								<li><a href="javascript:void(0)" target="/u/main">上市公司资产信息</a>
									<ul>
										<li><a href="/register/houses-add" target="/u/main">信息登记</a></li>
										<li><a href="/companyquery/houses" target="/u/main">信息查询</a></li>
										<li><a href="/company/info" target="/u/main">使用信息</a></li>
										<li><a href="/company/count-list" target="/u/main">信息统计</a></li>
									</ul>
								</li>
								<li><a href="javascript:void(0)" target="/u/main">全省车辆信息</a>
	
									<ul>
										<li><a href="/vehicle/info-add" target="/u/main"> 车辆登记</a></li>
										<li><a href="/vehicle/info-find" target="/u/main">车辆查询</a></li>
									</ul></li>
	
								<li><a href="/function/" target="/u/main">省公司维修维护信息</a></li>
								<li><a href="/function/" target="/u/main">省公司公务电话信息</a></li>
								<li><a href="/function/" target="/u/main">服务公司资产信息</a></li>
								<li><a href="/function/" target="/u/main">省公司交通信息</a></li>
								<li><a href="/function/" target="/u/main">省公司水电能耗信息</a></li>
							</ul></li>
						<li><a href="#"><i class="icon-briefcase icon-2x"></i>&nbsp&nbsp<strong>服务功能应用</strong>
							<span class="caret"></span></a>
							<ul>
								<li><a href="/function/" target="/u/main">办公设备租贷</a></li>
								<li><a href="/function/" target="/u/main">维修维护服务申请</a></li>
								<li><a href="/function/" target="/u/main">配餐维护服务申请</a></li>
								<li><a>配餐中心用餐申请</a>
									<ul>
										<li><a href="/property/dinnerApplicationView" target="/u/main">申请方应用</a></li>
										<li><a href="/property/dinnerAuditing" target="/u/main">审核方应用</a></li>
										<li><a href="/property/dinnerManagement" target="/u/main">管理方应用</a></li>
									</ul></li>
								<li><a href="/function/" target="/u/main">省公司公务通信服务</a></li>
								<li><a href="/function/" target="/u/main">办公家具请购</a></li>
								<li><a>物业服务需求申请</a>
									<ul>
										<li><a href="/property/server" target="/u/main">申请方应用</a></li>
										<li><a href="/property/auditing" target="/u/main">审核方应用</a></li>
										<li><a href="/property/management" target="/u/main">管理方应用</a></li>
									</ul></li>
								<li><a href="/function/" target="/u/main">面点预订</a></li>
								<li><a href="/function/" target="/u/main">省公司房屋分配</a></li>
								<li><a href="/function/" target="/u/main">海报张贴服务</a></li>
							</ul></li>
						<li><a href="#"><i class="icon-wrench icon-2x"></i>&nbsp&nbsp<strong>后勤服务考评</strong>
							<span class="caret"></span></a>
							<ul>
								<li><a href="/service/management-write" target="/u/main">物业服务考评填写</a></li>
								<li><a href="/service/management-check" target="/u/main">物业服务考评管理</a></li>
								<li><a href="/function/" target="/u/main">用餐张贴满意度调查</a></li>
							</ul></li>
					</ul>
				</div>
			<!-- </div>
		</div> -->
		<!--天气-->
	    <div class="wea_time">
		    	<%!String date;
		    	String dayWeather;
		    	String nightWeather;
		    	String high;
		    	String low;
		    	String suggestion;%>
		    	<%String link = "http://php.weather.sina.com.cn/xml.php?city=%b3%c9%b6%bc&password=DJOYnieT8234jlsK&day=0";  
		        	URL url;
		        	try {  
		            url = new URL(link);  
		            XmlParser parser = new XmlParser(url);  
		            String[] nodes = {"savedate_weather","status1","status2","temperature1","temperature2","yd_s"};  
		            Map<String, String> map = parser.getValue(nodes);  
		            date = map.get(nodes[0]);
		            dayWeather = map.get(nodes[1]);
		            nightWeather = map.get(nodes[2]);
		            high = map.get(nodes[3]);
		            low = map.get(nodes[4]);
		            suggestion = map.get(nodes[5]);
		        } catch (MalformedURLException e) {  
		            e.printStackTrace();  
		        }  %>
		        <%=date%>&nbsp&nbsp&nbsp&nbsp日间天气：<%=dayWeather %>&nbsp&nbsp&nbsp&nbsp夜间天气：<%=nightWeather %>&nbsp&nbsp&nbsp&nbsp最高温：<%=high %>℃&nbsp&nbsp&nbsp&nbsp最低温：<%=low %>℃&nbsp&nbsp&nbsp&nbsp出行建议：<%=suggestion %>&nbsp&nbsp&nbsp&nbsp今日通知：<%=session.getAttribute("info") %>
	 </div>
	 <div class="right">
       <iframe name="/u/main" style="width:83.4%; height:900px;" scrolling="no" frameborder="0" border="0"></iframe>
     </div>
    
    
    <script src="/assets/js/jquery-1.9.1.js"></script>
    <script src="/assets/js/bootstrap.js"></script>
    
    	<script>
		$(document).ready(
				function() {
					$(".menu>li>a").click(
							function(e) {
								e.preventDefault();
								$(this).siblings("ul").slideToggle().parent(
										"li").siblings().children("ul")
										.slideUp();
							});
				/* 	$(".menu>li>ul>li>a").click(function(e) {
	
						$(this).siblings("ul").slideToggle();
					}); */
				});
	</script>
    
</body>
</html>