<%@page import="com.GB.ChinaMobileMS.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用餐服务申请</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
    <style>
        ol>li{
            font-size:15px;
        }
        .star{
        	color:red;
        	font-size:20px;
        	display:inline-block;
        	padding-top:8px;
        }
    </style>
    <script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery-ui-1.8.18.custom.min.js"></script>
	<script type="text/javascript" src="assets/js/JScript.js"></script>
</head>
<body>

<div class="container" style="width:1100px;">

    <div class="row">
        <div class="col-md-12 main">
            
            <div class="row">
                <div class="col-md-12">
                    <ol class="breadcrumb">
                        <li>配餐中心用餐申请</li>
                        <li>申请方应用</li>
                        <li class="dropdown active">
						  	<a href="/property/server" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用餐表格申请<span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/property/dinnerApplicationView">服务状态 </a>
					          </ul>
						  </li>
                    </ol>
                </div>
            </div>

			<%!String branchName, companyName;%>
			<%branchName = (String)request.getAttribute("branchName");
				companyName = (String)request.getAttribute("companyName");%>
            <form class="form-horizontal" action = "/addDinnerProperty" method="post">
                 <h4 style="text-align: center">用餐申请表格填写</h4> 
                <div class="form-group">
                    <label  class="col-sm-offset-2 col-sm-2 control-label">所属公司</label>
                    <div class="col-sm-4">
                        <input type="text" readOnly="true" class="form-control" placeholder=<%=companyName %>>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-offset-2 col-sm-2 control-label">申请部门</label>
                    <div class="col-sm-4">
                        <input type="text" readOnly="true" class="form-control" placeholder=<%=branchName %>>
                    </div>
                </div>
                <div class="form-group">
                    <label    class="col-sm-offset-2 col-sm-2 control-label">申请人</label>
                    <div class="col-sm-4">
                        <input type="text" readOnly="true" class="form-control" placeholder=<%=((User)session.getAttribute("user")).getAccountName() %>>
                    </div>
                </div>
                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">开始日期</label><span class="star">*</span>
                    <div class="col-sm-4">
                        <input id="startDate" name ="startDate" type="date" class="form-control" required  placeholder="开始日期">
                    </div>
                </div>
                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">结束日期</label><span class="star">*</span>
                    <div class="col-sm-4">
                        <input id="finishDate" name ="finishDate" type="date" class="form-control" required  placeholder="结束日期">
                    </div>
                </div>
                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">联系方式</label><span class="star">*</span>
                    <div class="col-sm-4">
                        <input name ="contactInfo" id="contactInfo" type="text"  maxlength = "11"  class="form-control" required  placeholder="联系方式"
                        onkeyup="this.value=this.value.replace(/\D/g,'')" 
					    onafterpaste="this.value=this.value.replace(/\D/g,'')"
					    onBlur="if(this.value!=''&&this.value.length!=11) alert('电话号码长度不正确');">
                    </div>
                </div>

                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">安排人数</label><span class="star">*</span>
                    <div class="col-sm-4">
                        <input id="arrangePersonCount" name ="arrangePersonCount" type="text" class="form-control" required onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" placeholder="安排人数">
                    </div>
                </div>
                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">用餐类型</label><span class="star">*</span>
                    <div class="col-sm-4">
                       <select name="dinnerType" type="text" class="form-control" >
                           <option>新员工用餐</option>
                           <option>借调人员用餐</option>
                           <option>接待用餐</option>
                       </select>
                    </div>
                </div>
                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">备注</label>
                    <div class="col-sm-4">
                        <input name ="addition" type="text" class="form-control"   placeholder="备注">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-5 col-sm-4">
                        <button type="submit"  id="submit" class="btn btn-default"  >提交</button>
                        <input type="button" class="btn btn-default" name="back" value="返回" onclick="javascript:history.back(-1);"/>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>

	<script type="text/javascript">
	$(function(){
		$("#submit").click(function(){
			return validateInfo();
		})
	});
	
	function validateInfo() {
		var startDate = $("#startDate").val();
		if(startDate.length > 10){
			alert("请选择正确的开始日期格式");
			return false;
		}
		var finishDate = $("#finishDate").val();
		if(finishDate.length > 10){
			alert("请选择正确的结束日期格式");
			return false;
		}
		
		var today=new Date();
		var month = today.getMonth()+1;
		var day = today.getDate();
		var monthStr;
		var dayStr;
		if(month < 10)
			monthStr = "0" + month;
		else
			monthStr = month + "";
		
		if(day < 10) 
			dayStr = "0" + day;
		else
			dayStr = day + "";
		
		var todayStr = today.getFullYear() + "-" + monthStr + "-" + dayStr;
		
		if(startDate < todayStr){
			alert("开始时间必须在当前日期之后");
			return false;
		}
			
		if(startDate > finishDate){
			alert("结束时间不得早于开始时间。");
			return false;
		}
		
		var contactInfo = $("#contactInfo").val();
		var reg = /^1(3|4|5|7|8)\d{9}$/;
		if(contactInfo.match(reg) == null){
			alert("电话号码格式不正确");
			return false;
		} 
		return true;
	}
	</script>
</body>
</html>