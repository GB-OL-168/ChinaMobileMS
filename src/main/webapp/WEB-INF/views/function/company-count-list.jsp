<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>上市公司资产信息管理 - 信息登记</title>
    <link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
    <style>
        ol>li{
            font-size:18px;
        }
    </style>
</head>
<body>

	<div class="container" style="margin-left:20px;">
	
	    <div class="row">
	        <div class="col-md-12 main">
	            <div class="row">
	                <div class="col-md-12">
	                    <ol class="breadcrumb">
	                        <li><a href="#">信息管理</a></li>
	                        <li><a href="#">上市公司资产信息</a></li>
	                        <li class="dropdown">
	                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息统计 <span class="caret"></span></a>
	                            <ul class="dropdown-menu">
	                                <li><a href="company-register-houses.html">信息查询</a></li>
	                                <li><a href="company-register-houses-add.html">信息登记</a></li>
	                            </ul>
	                        </li>
	                        <li><a href="#">统计分析</a></li>
	                    </ol>
	                </div>
	                <hr>
	
	                <div class="col-md-2">
	                    <form action="" >
	                        <div class="input-group">
	                            <input type="text" class="form-control input-sm" placeholder="请输入所搜公司名称">
									<span class="input-group-btn">
										<input type="submit" class="btn btn-default btn-sm" value="搜索"/>
								  	</span>
	                        </div>
	                    </form>
	                </div>
	            </div>
	
	            <table class="table table-bordered">
	                <h3 style="text-align:center;">查询结果</h3>
	                <tr>
	                    <th>公司编号</th>
	                    <th>公司名称</th>
	                    <th>拥有建筑</th>
	                    <th>查看详情</th>
	                </tr>
	                <tr>
	                    <td>1</td>
	                    <td>四川华迪信息技术有限公司</td>
	                    <td>2</td>
	                    <td><a href="/company/count">查看详情</a></td>
	                </tr>
	                <tr>
	                    <td>1</td>
	                    <td>四川华迪信息有限公司</td>
	                    <td>2</td>
	                    <td><a href="#">查看详情</a></td>
	                </tr>
	                <tr>
	                    <td>1</td>
	                    <td>四川华迪术有限公司</td>
	                    <td>2</td>
	                    <td><a href="#">查看详情</a></td>
	                </tr>
	
	
	            </table>
	        </div>
	    </div>
	</div>
</body>
</html>