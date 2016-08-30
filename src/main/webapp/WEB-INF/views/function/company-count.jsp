<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
<head>
<meta charset="utf-8">
	<title>上市公司资产信息管理 - 统计分析</title>
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

						  <li><a href="#">信息管理</a></li>
						  <li><a href="#">上市公司资产信息</a></li>
							<li>
								<a href="#">信息统计</a>
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

				<h4 style="text-align:center;">资产统计</h4>
				<table class="table	table-responsive table-bordered col-md-12  table-striped" style="width:900px;">
				  <tr>
				  	<th>公司名称</th>
				  	<th>房屋总数</th>
				    <th>房间总数</th>
				    <th>办公家具总数</th>
				  	<th>租贷设备总数</th>
				  </tr>
				  <tr>
					  <%!String companyName;%>
					  <%!int housesSum;%>
					  <%!String loanDeviceSum;%>
					  <%companyName = (String) request.getAttribute("companyName");
				  		housesSum = (int) request.getAttribute("housesSum");
				  		loanDeviceSum = (String) request.getAttribute("loanDeviceSum");%>
				  	<td><%=companyName%></td>
				  	<td>${fn:length(listAssetHousing)}</td>
				    <td><%=housesSum%></td>
				    <td>空</td>
				    <td>
				   		 <c:choose>
							<c:when test="<%=loanDeviceSum==null%>">0</c:when>
							<c:when test="<%=loanDeviceSum!=null%>"><%=loanDeviceSum%></c:when>
						</c:choose>
					</td>
				  </tr>
				  <tr>
					<th>建筑名称</th>
					<th>层数</th>
					<th>房间数</th>
					<th>办公家具数量</th>
					<th>查看详情</th>
		    	  </tr>
				  <c:forEach items="${listAssetHousing}" var="a">
		             <tr class="a">
		             <td>${a.buildingName}</td>
		             <td>空</td>
		             <td>${a.roomCount}</td>
		             <td>空</td>
		             <td><a href="/companyCount">查看</a></td>
	                 </tr>
	               </c:forEach>
				</table>
				
				
				<h3 style="text-align:center;">家具统计</h3>
				<table class="table	table-responsive table-bordered col-md-8">
					<tr>
						<th>家具类型</th>
						<th>家具总数</th>
						<th>家具总价值</th>
					</tr>
					<tr>
						<td>床</td>
						<td>200</td>
						<td>500000</td>
					</tr>
					<tr>
						<td>椅子</td>
						<td>832</td>
						<td>400213</td>
					</tr>
				</table>
				
			</div>
		</div>
	</div>

</body>
</html>