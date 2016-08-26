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
    </style>
</head>
<body>

<div class="container" style="margin-left:20px;">

    <div class="row">
        <div class="col-md-12 main">
            
            <div class="row">
                <div class="col-md-7">
                    <ol class="breadcrumb">
                        <li>用餐服务表格申请</li>
                        <!-- <li><a href="dinner-application-view.html">服务状态查询</a></li> -->
                        <li class="dropdown active">
						  	<a href="/property/server" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">服务状态 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="/property/dinnerApplicationView">用餐表格申请</a>
					          </ul>
						  </li>
                    </ol>
                </div>
            </div>


			<%!String branchName, companyName;%>
			<%branchName = (String)request.getAttribute("branchName");
				companyName = (String)request.getAttribute("companyName");%>
            <form class="form-horizontal" action = "/addDinnerProperty" method="post">
                <!-- <h3 style="text-align: center">用餐申请表格填写</h3> -->
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
                    <label   class="col-sm-offset-2 col-sm-2 control-label">开始日期</label>
                    <div class="col-sm-4">
                        <input name ="startDate" type="date" class="form-control"   placeholder="开始日期">
                    </div>
                </div>
                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">结束日期</label>
                    <div class="col-sm-4">
                        <input name ="finishDate" type="date" class="form-control"   placeholder="结束日期">
                    </div>
                </div>
                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">联系方式</label>
                    <div class="col-sm-4">
                        <input name ="contactInfo" type="tel" class="form-control"   placeholder="联系方式">
                    </div>
                </div>

                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">安排人数</label>
                    <div class="col-sm-4">
                        <input name ="arrangePersonCount" type="text" class="form-control"   placeholder="安排人数">
                    </div>
                </div>
                <div class="form-group">
                    <label   class="col-sm-offset-2 col-sm-2 control-label">用餐类型</label>
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
                        <button type="submit"  class="btn btn-default"  >提交</button>
                        <input type="button" class="btn btn-default" name="back" value="返回" onclick="javascript:history.back(-1);"/>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>

</body>
</html>