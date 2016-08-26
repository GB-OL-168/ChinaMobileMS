<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>考评表统计</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
    <h2 style="margin:0 auto">${investigationItemsName}</h2><br>
    
    <table id="form_make" class='table table-bordered table-hover center'>
        <div class='col-md-12 '>
            <tr>
                <th>考评项目</th>
                <th>考评标准</th>
                <th>统计结果</th>
            </tr>
            <c:forEach items="${investigationScoreEntitySetList}" var="investigationScoreEntitySetList">
            <tr>
                <td>${investigationScoreEntitySetList.investigationItemValue}</td>
                <td>${investigationScoreEntitySetList.investigationStanddard}</td>
                <td>
                    <p>十分满意:${investigationScoreEntitySetList.excellentPercentage}%</p>
                    <p>一般满意:${investigationScoreEntitySetList.goodPercentage}%</p>
                    <p>不满意:${investigationScoreEntitySetList.badPercentage}%</p>
                </td>
            </tr>
            </c:forEach>
        </div>
    </table>
    <a href="/service/management-check"><button class="btn btn-info" style="margin: 0 auto">返回</button></a>
</div>
</body>
</html>