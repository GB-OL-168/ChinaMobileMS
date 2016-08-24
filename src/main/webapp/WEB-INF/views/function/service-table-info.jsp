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
    <div class="container">
        <!-- <h2 style="margin:0 auto";>物业考评表</h2><br> -->
        <table id="form_make" class='table table-bordered table-hover center'>
            <div class='col-md-12 '>
                <tr>
                    <th>考评项目</th>
                    <th>考评标准</th>
                </tr>
                <c:forEach items="${investigationItemsEntityList}" var="investigationItemsEntityList">
                <tr>
                    <td>${investigationItemsEntityList.investigationItemValue}</td>
                    <td>
                    	${investigationItemsEntityList.investigationStanddard}
                    </td>
                </tr>
                </c:forEach>
               <!-- <tr>
                    <td>礼仪接待</td>
                    <td><p>遵守来访制度，严格询问、查验并登记来访人员证件，正确运用礼貌用语，服务态度细致热情，质量检查不合格扣1分</p>
                        <p>遵守来访制度，严格询问、查验并登记来访人员证件，正确运用礼貌用语，服务态度细致热情，质量检查不合格扣1分</p>
                        <p>遵守来访制度，严格询问、查验并登记来访人员证件，正确运用礼貌用语，服务态度细致热情，质量检查不合格扣1分</p>
                        <p>遵守来访制度，严格询问、查验并登记来访人员证件，正确运用礼貌用语，服务态度细致热情，质量检查不合格扣1分</p>
                    </td>
                </tr>
                <tr>
                    <td>礼仪接待</td>
                    <td><p>遵守来访制度，严格询问、查验并登记来访人员证件，正确运用礼貌用语，服务态度细致热情，质量检查不合格扣1分</p>
                        <p>遵守来访制度，严格询问、查验并登记来访人员证件，正确运用礼貌用语，服务态度细致热情，质量检查不合格扣1分</p>
                        <p>遵守来访制度，严格询问、查验并登记来访人员证件，正确运用礼貌用语，服务态度细致热情，质量检查不合格扣1分</p>
                        <p>遵守来访制度，严格询问、查验并登记来访人员证件，正确运用礼貌用语，服务态度细致热情，质量检查不合格扣1分</p>
                    </td>
                </tr>
                 --> 
            </div>
        </table>
       <!--  <a href="/service/table-write"><button class="btn btn-info" style="margin: 0 auto">填写</button></a>-->
        <a href="/service/management-check"><button class="btn btn-info" style="margin: 0 auto">返回</button></a>
    </div>
</body>
</html>