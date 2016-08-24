<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
	

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>信息管理-上市公司资产信息-使用情况</title>
 	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
	   <style>
        ol li{
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">使用信息 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="company-register-houses-add.html">信息登记</a></li>
                                <li><a href="company-register-houses.html">信息查询</a></li>
                                <li><a href="company-count.html">信息统计</a></li>
                            </ul>
                        </li>
                        <li class="active">
                            <a href="javascript:void(0)">使用信息查询 <span class="caret"></span></a>
                        </li>
                    </ol>
                </div>
            </div>
            <hr>
                <form action="">
                    <div class="col-md-offset-3 col-md-2">
                        <input type="radio" name="houses" value="company">在用
                        <input type="radio" name="houses" value="area" style="display: inline-block">闲置
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <input type="text" class="form-control input-sm"  placeholder="请输入信息">
                                <span class="input-group-btn">
                                <button class="btn btn-default btn-sm" type="button">搜索</button>
                              </span>
                        </div>
                    </div>
                </form>
        </div>
        <hr>
        <div class="col-md-12">
        <table class="table table-bordered">
            <h3 style="text-align:center;">查询结果</h3>
            <tr>
                <th>家具类型</th>
                <th>品牌型号</th>
                <th>规格</th>
                <th>花色</th>
                <th>所在公司</th>
                <th>所在部门</th>
                <th>数量</th>
                <th>备注</th>
                <th>操作</th>
            </tr>
            <tr>
                <td>床</td>
                <td>席梦思</td>
                <td>2米</td>
                <td>粉红</td>
                <td>四川华迪有限公司</td>
                <td>公关部</td>
                <td>3</td>
                <td>无</td>
                <td><a href="">修改</a>|<a href="">删除</a></td>
            </tr>
            <tr>
                <td>床</td>
                <td>席梦思</td>
                <td>2米</td>
                <td>白色</td>
                <td>四川成都移动有限公司</td>
                <td>技术部</td>
                <td>3</td>
                <td>无</td>
                <td><a href="">修改</a>|<a href="">删除</a></td>
            </tr>
        </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>