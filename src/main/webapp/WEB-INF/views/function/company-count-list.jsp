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
</head>
<body>

	<div class="container" style="width:900px;">
	
	    <div class="row">
	        <div class="col-md-12 main">
	            <div class="row">
	                <div class="col-md-12">
	                    <ol class="breadcrumb">
	                        <li>信息管理</li>
	                        <li>上市公司资产信息</li>
	                        <li class="dropdown">
	                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息统计 <span class="caret"></span></a>
	                            <ul class="dropdown-menu">
	                                <li><a href="/companyquery/houses">信息查询</a></li>
	                                <li><a href="/register/houses-add">信息登记</a></li>
	                            </ul>
	                        </li>
	                        <li>统计分析</li>
	                    </ol>
	                </div>
	                <hr>
	
	                <div class="col-md-4">
	                    <form action="/statisticsCompany" method="post">
	                        <div class="input-group">
	                            <input type="text" name="company" class="form-control input-sm" placeholder="请输入所搜公司名称">
									<span class="input-group-btn">
										<button type="submit" class="btn btn-default btn-sm">搜索</button>
								  	</span>
	                        </div>
	                    </form>
	                </div>
	            </div>
	
	            <table class="table table-bordered"  style="width:900px;">
	                <h4 style="text-align:center;">查询结果</h4>
	                <tr>
	                    <th>公司编号</th>
	                    <th>公司名称</th>
	                    <th>拥有建筑</th>
	                    <th>详情查看</th>
	                </tr>
	                
	                <c:forEach items="${listCompany}" var="c">
		                <tr class="c">
		                <td>${c.companyId}</td>
		                <td>${c.companyName}</td>
		                <td>2</td>
		                <td><a href="/companyCount?companyId=${c.companyId}&companyName=${c.companyName}">查看</a></td>
		                </tr>
	                </c:forEach>
	
	            </table>
	        </div>
	    </div>
	</div>
</body>
</html>