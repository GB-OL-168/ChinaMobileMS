<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	<script src="/assets/js/fenye.js"></script>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<style>
		th,td{
			text-align: center;
		}
	</style>
</head>
<body>
	 <div class="container" style="width:900px;">
	  <div class="row">
	  		<div class="col-md-12">
				<ol class="breadcrumb">
				  <li><a href="javascript:void(0)">后勤服务考评</a></li>
				  <li><a href="javascript:void(0)">物业服务考评</a></li>
				  <li class="dropdown active">
				  	<a href="javascript:void(0)">考评表管理</a></li>
				</ol>
			</div>
			<div class="col-md-12 left">
				<div class="container">
					<a href="/service/management-table-make"><button class="btn btn-sm">新建考评表</button></a>
						
					<table id="idData"class='table table-bordered table-hover center table-striped'>
						<tr>
							<th>考评表名字</th><th>状态</th><th>建表人员</th><th>回收时间</th><th>操作</th>
						</tr>
						<c:forEach items="${investigationTableEntityList}" var="investigationTableEntityList">
						<tr >
							<td>${investigationTableEntityList.investigationName}</td>
							<td>
								<c:choose>
								<c:when test="${investigationTableEntityList.status==0}">
								未发放
								</c:when>
								<c:when test="${investigationTableEntityList.status==1}">
								已发放
								</c:when>
								<c:when test="${investigationTableEntityList.status==2}">
								已回收
								</c:when>
								</c:choose>
							</td>
							<td>${investigationTableEntityList.createStaff}</td>
							<td>${investigationTableEntityList.recoveryTime}</td>
							<td>
			
							<a href="/showInvestigationItem/${investigationTableEntityList.investigationId}"><button class='btn btn-sm'>查看</button></a>
								&nbsp&nbsp<a href="/sendServiceManagement1/${investigationTableEntityList.investigationId}" "><button class='btn btn-sm' onclick="checkeStatus(${investigationTableEntityList.status})">发放</button></a>
								&nbsp&nbsp<a href="/recycleServiceManagement/${investigationTableEntityList.investigationId}"><button class='btn btn-sm'onclick="checkRecoveryeStatus(${investigationTableEntityList.status})">回收</button></a>
								&nbsp&nbsp<button class='btn btn-sm' onclick="deleteTable(${investigationTableEntityList.investigationId})">删除</button>
								&nbsp&nbsp<a href="/statistics/${investigationTableEntityList.investigationId}"><button class='btn btn-sm'>统计</button></a>
							</td>
						</tr>
						</c:forEach>
					</table>	
					
			 		<br>
					<table width="70%" align="right">
				        <tr><td><div id="barcon" name="barcon"></div></td></tr>
				    </table>
					 </div>			
				</div>
			</div>
		</div>
	  </div>
	  
		
			 
	<script type="text/javascript">
	function checkeStatus(status){
		if(status==1||status==2){
			alert("已经发放或已经回收 ");
			return false;			
		}
	}
	function checkRecoveryeStatus(status){
		if(status==0){
			alert("还没有发放不能回收");
		}
		if(status==2){
			alert("已经回收啦")
			return false;
		}
	}
	function deleteSuccess(){
		alert("删除成功!");
	}
		
	 function deleteTable (investigationId){
		var isDelete  = confirm("是否删除?");
		if(isDelete){
			
		$.ajax({
			type: "POST",
			url:"/service/delete",
			data:{
				investigationId:investigationId
			},
			dataType:"json",
			success:function(flag){
				if(flag==true){
					alert("删除成功");
					window.location.href ="/service/management-check";
				}
				else
					alert("删除失败");
			},
			error:function(e){
				alert("连接服务器失败");
			}
			
		});
		}
	}; 
	</script>
</body>
</html>