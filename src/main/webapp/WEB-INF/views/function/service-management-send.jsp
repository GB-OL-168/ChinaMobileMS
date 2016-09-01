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
</head>
<body>
	<div class="container" style="width:900px">
		<div class="row">
			<div class="col-md-12">
				<ol class="breadcrumb">
				  <li><a href="javascript:void(0)">后勤服务考评</a></li>
				  <li><a href="javascript:void(0)">物业服务考评</a></li>
				  <li class="dropdown active">
				  	<a href="javascript:void(0)">考评表发送</a></li>
				</ol>
			</div>
			<div class="col-md-12 left"  style="width:900px">
				<form class="form-horizontal" 
					action="/sendServiceManagement2/${investigationId}" method="post">
							<h4 style="text-align: center">考评表发放操作</h4>
							<table class='table table-bordered table-hover center'>
								<tr>
									<th>考评表名字</th>
									<th>回收时间</th>
									<th>发送公司</th>
									<th>发送部门</th>
									<th>状态</th>
									<th>操作</th>
								</tr>

								<tr>
									<%!String investigationName;%>
									<%!int status;%>
									<%
										investigationName = (String) request.getAttribute("investigationName");
										status = (int) request.getAttribute("status");
									%>
									<td><%=investigationName%></td>
									<td><input name="recoveryTime" required type="date" id="recoveryTime"></td>
									<td>
										<div class="form-group">
											<div class="col-sm-5">
												<select style="width: 150px;" name="company"
													class="company form-control">
													<option value="">--请选择公司--</option>
													<c:forEach items="${listCompany}" var="c">
														<option value="${c.companyId }">${c.companyName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</td>

									<td>
										<div class="form-group">
											<div class="col-sm-5">
												<select style="width: 200px;" name="branchId" class="branch form-control">
													<option value="">--请选择部门--</option>
													<c:forEach items="${listBranch}" var="b">
														<option style="display: none;" class="${b.companyId}"
															value="${b.branchId}">${b.branchName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</td>

									<td>
										<c:choose>
											<c:when test="<%=status == 0%>">未发放</c:when>
											<c:when test="<%=status == 1%>">已发放</c:when>
											<c:when test="<%=status == 2%>">已回收</c:when>
										</c:choose>
									</td>
									<td><button type="submit" class='btn btn-info' id="send">发放</button></td>
								</tr>
							</table>
						</div>
					</div>
				</form>

			</div>

	<script>
		var all = 1;
		$(function() {
			$(".company").change(function() {
				$(".branch").val("");
				$("option." + all).css("display", "none");
				var b = $(".company").val();
				all = b;
				$("option." + b).css("display", "block");

			});
		});
		$(function(){
		 	$("#send").click(function(e){
		 		var inputTime=$("#recoveryTime").val();/*input中的时间 */
		 		if(inputTime==null||inputTime==""){
		 			alert("时间 为空 ");
			    	 e.preventDefault();
					return false;
		 		}
				var date = new Date();
			    var seperator1 = "-";
			    var seperator2 = ":";
			    var month = date.getMonth() + 1;
			    var strDate = date.getDate();
			    if (month >= 1 && month <= 9) {
			        month = "0" + month;
			    }
			    if (strDate >= 0 && strDate <= 9) {
			        strDate = "0" + strDate;
			    }
			    var currentDate = date.getFullYear() + seperator1 + month + seperator1 + strDate;/* 当前时间 */
			    var inputTimeDate=new Date(inputTime).getTime();
			    var currentTimeDate= new Date(currentDate).getTime();
			    if(inputTimeDate<currentTimeDate){
			    	alert("设置回收日期格式有误!设置回收日期应大于今天");
			    	 e.preventDefault();
						return false;
			    }
		 	});
		});
			
	</script>
	
</body>
</html>