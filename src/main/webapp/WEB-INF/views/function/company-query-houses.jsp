<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>上市公司资产-房屋查询主界面</title>
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
                        <li><a href="#">上市公司资产信息</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息查询 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="company-register-houses-add.html">信息登记</a></li>
                                <li><a href="company-count.html">信息统计</a></li>
                            </ul>
                        </li>
                        <li class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">房屋资产查询 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="company-register-rooms.html">房间信息查询</a></li>
                                <li><a href="company-register-furniture.html">办公家具查询</a></li>
                                <li><a href="company-register-lease.html">房屋资产查询</a></li>
                            </ul>
                        </li>
                    </ol>
                </div>
                <hr>
                <form action="">
                    <div class="col-md-offset-1 col-md-4">
                            <input type="radio" name="houses" value="company">公司名称
                            <input type="radio" name="houses" value="building">建筑名称
                            <input type="radio" name="houses" value="location">坐落地点
                            <input type="radio" name="houses" value="area" style="display: inline-block">建筑面积
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

            <table class="table table-responsive table-bordered col-md-8">
                <h3 style="text-align:center;">查询结果</h3>
                <tr>
                    <th>房屋编号</th>
                    <th>建筑名称</th>
                    <th>使用单位名称</th>
                    <th>坐落地点</th>
                    <th>建筑面积（m3）</th>
                    <th>查看具体信息</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>梦想大厦</td>
                    <td>四川华迪有限公司</td>
                    <td>四川成都</td>
                    <td>1110</td>
                    <td><a href="#">查看</a></td>
                 </tr>
                <tr>
                    <td>1</td>
                    <td>创业大厦</td>
                    <td>四川华迪有限公司</td>
                    <td>四川成都</td>
                    <td>1430</td>
                    <td><a href="#">查看</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>