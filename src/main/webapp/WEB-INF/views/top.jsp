<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</div>
    <script src="/assets/js/jquery-1.9.1.js"></script>
    <script src="/assets/js/bootstrap.js"></script>
   
</body>
</html>