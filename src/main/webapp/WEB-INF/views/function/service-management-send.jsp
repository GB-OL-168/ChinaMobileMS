<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>后勤服务中心管理信息系统 - 服务考评</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	<meta name="description" content="">
	<meta name="keywords" content="">
</head>
<body>
	  
	  <div class="container">
	  <div class="row">
		<div class="col-md-12 left">
			<h2>服务考评</h2><b>物业服务考评</b>
			<form class="form-horizontal" action = "/sendServiceManagement2/" method="post">
				<div class="container">
				<div class='col-md-12 '>
				<h3 style="text-align: center">考评表发放情况</h3>
					<table class='table table-bordered table-hover center'>
						<tr>
					 	 <th>编号</th>
						 <th>考评表名字</th>
						 <th>回收时间</th>
						 <th>发送公司</th>
						 <th>发送部门</th>
						 <th>状态</th>
						 <th>操作</th>
						</tr>
						
						<tr>
						<%--  <td>1</td>
						 <%!String investigationName;%>
						 <%!int status;%>
					     <%investigationName = (String)request.getAttribute("investigationName");
						     status = (int)request.getAttribute("status");%>
						 <td><%=investigationName %></td> --%>
						 <td> <input name ="recoveryTime" type="datetime-local"></td>
						 
						 <td>
							<select class="form-control" multiple>
							
							<%--  <c:forEach items="${list}" var="a" >
							 <option>${a.companyName}</option>
							 </c:forEach> --%>
							 
							  <option>总公司</option>
							  <option>郫县分公司</option>
							</select>
						 </td>
						 
						 <td>
							<select class="form-control" multiple>
							
							<%--  <c:forEach items="${list}" var="a" >
							 <option>${a.companyName}</option>
							 </c:forEach> --%>
							 
							  <option>总公司管理员</option>
							  <option>科室主管</option>
							  <option>总公司职员</option>
							  <option>科室主管</option>
							  <option>分公司职员</option>
							</select>
						 </td>
						 
						 <td>
							<%-- <c:choose>
					  			<c:when test = "<%=status==0 %>">未发放</c:when>
					  			<c:when test = "<%=status==1 %>">已发放</c:when>
					  			<c:when test = "<%=status==2 %>">已回收</c:when>
				  			</c:choose> --%>
				  		 </td>
						 <td><button type="submit" class='btn btn-info'>发放</button></td></tr>
					</table>
				</div>
				</div>
			</form>
				
		</div>
	  </div>
	  </div>
</body>
</html>