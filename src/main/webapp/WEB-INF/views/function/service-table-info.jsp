<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>考评表具体信息</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
</head>
<body>
    <div class="container" style="width:900px;">
    	<div class="col-md-12">
			<ol class="breadcrumb">
			  <li><a href="javascript:void(0)">后勤服务考评</a></li>
			  <li><a href="javascript:void(0)">物业服务考评</a></li>
			  <li class="dropdown active">
			  	<a href="javascript:void(0)">考评表发送</a></li>
			</ol>
		</div>
    
       	<h4 style="margin-left:350px;">考评表名称：${investigationName}</h4> 
       	<table id="form_make" class='table table-bordered table-hover center'>
           <div class='col-md-12'>
               <tr>
                   <th>考评项目</th>
                   <th>考评标准</th>
               </tr>
               <c:forEach items="${investigationItemsEntityList}" var="investigationItemsEntityList">
               <tr>
                   <td>${investigationItemsEntityList.investigationItemValue}</td>
                   <td>
                   	${investigationItemsEntityList.investigationStanddard}
                   </td>
               </tr>
               </c:forEach>
           </div>
        </table>
        <a href="/service/management-check"><button class="btn btn-sm" style="margin: 0 auto">返回</button></a>
    </div>
</body>
</html>