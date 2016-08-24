<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>全省车辆信息-驾驶员信息查询</title>
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
                        <div class="col-md-offset-3 col-md-3">
                            <input type="radio" name="vehicle" value="">姓名
                            <input type="radio" name="vehicle" value="">性别
                            <input type="radio" name="vehicle" value="" style="display: inline-block">服务单位
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
                    <th>姓名</th>
                    <th>性别</th>
                    <th>出生日期</th>
                    <th>驾龄</th>
                    <th>学历</th>
                    <th>籍贯</th>
                    <th>服务单位</th>
                    <th>身份证号</th>
                    <th>联系方式</th>
                    <th>家庭住址</th>
                    <th>备注</th>
                </tr>
                <tr>
                    <td>叶绪创</td>
                    <td>男</td>
                    <td>19994-01-03</td>
                    <td>1年</td>
                    <td>大学本科 </td>
                    <td>广东省汕头市</td>
                    <td>四川华迪公司</td>
                    <td>4247918574235</td>
                    <td>18814092345</td>
                    <td>弘吉雅居4栋3单元</td>
                    <td>无</td>
                </tr>
                <tr>
                    <td>叶绪创</td>
                    <td>男</td>
                    <td>19994-01-03</td>
                    <td>1年</td>
                    <td>大学本科 </td>
                    <td>广东省汕头市</td>
                    <td>四川华迪公司</td>
                    <td>4247918574235</td>
                    <td>18814092345</td>
                    <td>弘吉雅居4栋3单元</td>
                    <td>无</td>
                </tr>
            </table>
        </div>
        </div>
    </div>
</body>
</html>