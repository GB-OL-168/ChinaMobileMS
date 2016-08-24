<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>全省车辆信息-车辆信息登记</title>
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
                            <li><a href="#">全省车辆信息</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息查询 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="vehicle-info-add.html">信息登记</a></li>
                                </ul>
                            </li>
                            <li class="dropdown active">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">车辆信息查询 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="vehicle-person-find.html">驾驶员信息查询</a></li>
                                </ul>
                            </li>
                        </ol>
                    </div>
                </div>
                <hr>
                <form action="">
                    <div class="col-md-offset-1 col-md-4">
                        <input type="radio" name="vehicle" value="">品牌
                        <input type="radio" name="vehicle" value="">型号
                        <input type="radio" name="vehicle" value="">车辆类型
                        <input type="radio" name="vehicle" value="">车座
                        <input type="radio" name="vehicle" value="" style="display: inline-block">使用单位
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
            </div>
                <table class="table table-bordered">
                    <h3 style="text-align:center;">查询结果</h3>
                    <tr>
                        <th>品牌</th>
                        <th>型号</th>
                        <th>车辆类型</th>
                        <th>车座</th>
                        <th>国产/进口</th>
                        <th>车身颜色</th>
                        <th>燃油种类</th>
                        <th>发动机号</th>
                        <th>VIN</th>
                        <th>出厂日期</th>
                        <th>车主</th>
                        <th>车辆价格</th>
                        <th>使用单位</th>
                    </tr>
                    <tr>
                        <td>保时捷</td>
                        <td>991</td>
                        <td>跑车</td>
                        <td>2</td>
                        <td>进口 </td>
                        <td>红色</td>
                        <td>金龙油</td>
                        <td>不知道</td>
                        <td>110</td>
                        <td>2016-08-19</td>
                        <td>叶绪创</td>
                        <td>200</td>
                        <td>四川华迪有限公司</td>
                    </tr>
                    <tr>
                        <td>保时捷</td>
                        <td>991</td>
                        <td>跑车</td>
                        <td>2</td>
                        <td>进口 </td>
                        <td>红色</td>
                        <td>金龙油</td>
                        <td>不知道</td>
                        <td>110</td>
                        <td>2016-08-19</td>
                        <td>叶绪创</td>
                        <td>200</td>
                        <td>四川华迪有限公司</td>
                    </tr>
                    <tr>
                        <td>保时捷</td>
                        <td>991</td>
                        <td>跑车</td>
                        <td>2</td>
                        <td>进口 </td>
                        <td>红色</td>
                        <td>金龙油</td>
                        <td>不知道</td>
                        <td>110</td>
                        <td>2016-08-19</td>
                        <td>叶绪创</td>
                        <td>200</td>
                        <td>四川华迪有限公司</td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
</body>
</html>