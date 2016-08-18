<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>四川移动后勤中心管理信息系统</title>
    <!--<link href="../css/top.css" rel="stylesheet" type="text/css" />-->
    <link href="/assets/css/index.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/left.css" rel="stylesheet" type="text/css"/>
    <style>
			    .top>.account_info{
			    margin-left:35%;
			    width:200px;
			    height:20px;
			    /*background-color: #fff;*/
			}
			.top>.account_info>a{
			    list-style-type: none;
			    color:black;
			}
    </style>
</head>
<body>
<div >
    <!--顶层-->
    <div class="top">
        <img src="/assets/img/title_0.png"/>
        <div class="account_info" style="display: inline-block">
            <a href="#">
                <span class="user_name">${user.userName}</span>
                <span class="account_name">${user.accountName}</span>
            </a>
                <a href="/logout2" target="_top"><span>退出登录</span></a>
        </div>
    </div>
    <!--天气-->
    <div class="wea_time">
        <a>2017年8月09日 星期一 天气：晴 今日通知：........</a>
    </div>
</div>
    <script src="/assets/js/jquery-1.9.1.js"></script>
    <script src="/assets/js/bootstrap.js"></script>
   
</body>
</html>