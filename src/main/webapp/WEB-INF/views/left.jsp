<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="UTF-8">
<link href="/assets/css/index.css" rel="stylesheet" type="text/css" />
<link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="/assets/css/font-awesome.css" rel="stylesheet"
	type="text/css" />
<link href="/assets/css/left.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!--左边-->
	<div class="left">
		<div class="container">
			<div class="row">
				<ul class="menu">
					<li><a href="#"><i class="icon-cogs icon-2x"></i>&nbsp&nbsp<strong>系统设置</strong></a>
						<ul>
							<li><a href="/system/user" target="/u/main">账号管理</a></li>
							<li><a href="/system/role-assignment" target="/u/main">权限设置</a></li>
							<li><a href="/system/parameter" target="/u/main">参数配置</a></li>
							<li><a href="/system/data" target="/u/main">数据备份</a></li>
						</ul></li>
					<li><a href="#"><i class="icon-bar-chart icon-2x"></i>&nbsp&nbsp<strong>信息管理平台</strong></a>
						<ul>
							<li><a href="javascript:void(0)" target="/u/main">上市公司资产信息</a>
								<ul>
									<li><a href="/register/houses-add" target="/u/main">信息登记</a></li>
									<li><a href="/companyquery/houses" target="/u/main">信息查询</a></li>
									<li><a href="/company/info" target="/u/main">使用信息</a></li>
									<li><a href="/company/count" target="/u/main">信息统计</a></li>
								</ul></li>

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
					<li><a href="#"><i class="icon-briefcase icon-2x"></i>&nbsp&nbsp<strong>服务功能应用</strong></a>
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
					<li><a href="#"><i class="icon-wrench icon-2x"></i>&nbsp&nbsp<strong>后勤服务考评</strong></a>
						<ul>
							<li><a href="/service/management-write" target="/u/main">物业服务考评填写</a></li>
							<li><a href="/service/management-check" target="/u/main">物业服务考评管理</a></li>
							<li><a href="/function/" target="/u/main">用餐张贴满意度调查</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
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
					$(".menu>li>ul>li>a").click(function(e) {
						///e.preventDefault();
						$(this).siblings("ul").slideToggle();
					});
				});
	</script>
</body>
</html>