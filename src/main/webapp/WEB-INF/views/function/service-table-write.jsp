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
		<div class="row">
			<div class="col-md-12">
				<ol class="breadcrumb">
				  <li><a href="javascript:void(0)">后勤服务考评</a></li>
				  <li><a href="javascript:void(0)">物业服务考评</a></li>
				  <li class="dropdown active">
				  	<a href="javascript:void(0)">考评表填写</a></li>
				</ol>
			</div>
			<h4 style="margin-left:350px;">考评表名称</h4>
	   		<form action="/writeInvestigationItemsScore" method="post">
	   			 <table id="form_make" class='table table-bordered table-hover center'>
	    
		       	 <div class='col-md-12 '>
		            <tr>
		                <th>考评项目</th>
		                <th>考评标准</th>
		                <th>选项</th>
		            </tr>
		             <c:forEach items="${investigationItemsEntityList}" var="investigationItemsEntityList" varStatus="status">
		            <tr>
		            	<td style="display:none">${status.index +1}</td>
		                <td>${investigationItemsEntityList.investigationItemValue }</td>
		                <td>
		                ${investigationItemsEntityList.investigationStanddard}
		                </td>
		                <td>
		                    <input type="radio" name="InvestigationScoreEntityList[${status.index}].grade" value="excellent">十分满意
		                    <input type="radio" name="InvestigationScoreEntityList[${status.index}].grade" value="good">一般满意
		                    <input type="radio" name="InvestigationScoreEntityList[${status.index}].grade" value="bad">不满意
		              		<input type="hidden" name="investigationId" value="${investigationItemsEntityList.investigationId }">
		                </td>
		                 
		            </tr>
		            </c:forEach>
		        </div>
	    	</table>
	    	<button class="btn btn-info" style="margin: 0 auto" type="submit">确认考评完毕</button>
	    </form>
	</div>

</body>
</html>