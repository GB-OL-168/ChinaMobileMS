<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/assets/css/index.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/left.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <!--左边-->
        <div class="left">
            <div class="container">
                <div class="row">
                        <ul class="menu">
                            <li>
                                <a href="#"><i class="icon-cogs icon-2x"></i>&nbsp&nbsp<strong>系统设置</strong></a>
                                <ul>
                                    <li><a href="/system-?id=user" target="main">账号管理</a></li>
                                    <li><a href="/system-?id=role-assignment" target="main">权限设置</a></li>
                                    <li><a href="/system-?id=parameter-update" target="main">参数配置</a></li>
                                    <li><a href="/system-?id=data" target="main">数据备份</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="icon-bar-chart icon-2x"></i>&nbsp&nbsp<strong>信息管理平台</strong></a>
                                <ul>
                                    <li><a href="/function/" target="main">上市公司资产信息</a></li>
                                    <li><a href="/function/" target="main">全省车辆信息</a></li>
                                    <li><a href="/function/" target="main">省公司维修维护信息</a></li>
                                    <li><a href="/function/" target="main">省公司公务电话信息</a></li>
                                    <li><a href="/function/" target="main">服务公司资产信息</a></li>
                                    <li><a href="/function/" target="main">省公司交通信息</a></li>
                                    <li><a href="/function/" target="main">省公司水电能耗信息</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="icon-briefcase icon-2x"></i>&nbsp&nbsp<strong>服务功能应用</strong></a>
                                <ul>
                                    <li><a href="/function/" target="main">办公设备租贷</a></li>
                                    <li><a href="/function/" target="main">维修维护服务申请</a></li>
                                    <li><a href="/function/" target="main">配餐维护服务申请</a></li>
                                    <li><a href="/function/" target="main">配餐中心用餐申请</a></li>
                                    <li><a href="/function/" target="main">省公司公务通信服务</a></li>
                                    <li><a href="/function/" target="main">办公家具请购</a></li>
                                    <li><a href="function/" target="main">物业服务需求申请</a></li>
                                    <li><a href="/function/" target="main">面点预订</a></li>
                                    <li><a href="/function/" target="main">省公司房屋分配</a></li>
                                    <li><a href="/function/" target="main">海报张贴服务</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="icon-wrench icon-2x"></i>&nbsp&nbsp<strong>后勤服务考评</strong></a>
                                <ul>
                                    <li><a href="/function/" target="main">物业服务考评</a></li>
                                    <li><a href="/function/" target="main">用餐张贴满意度调查</a></li>
                                </ul>
                            </li>
                        </ul>
                </div>
            </div>
        </div>
    <script src="/assets/js/jquery-1.9.1.js"></script>
    <script src="/assets/js/bootstrap.js"></script>
    <script>
        $(document).ready(function(){
            $(".menu>li>a").click(function(e){
                e.preventDefault();
                $( this ).siblings("ul").slideToggle().parent("li").siblings().children("ul").slideUp();
            });
        });
    </script>
</body>
</html>