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
                                <li>信息管理</li>
                                <li>全省车辆信息</li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息登记 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="/vehicle/info-find">信息查询</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">驾驶员信息登记 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="/vehicle/info-add">车辆信息登记</a></li>
                                    </ul>
                                </li>
                            </ol>
                        </div>
                    </div>

                    <form class="form-horizontal" action = "/addVehiclePerson" method="post">
                        <h3 style="text-align: center">驾驶员信息登记</h3>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">姓名</label>
                            <div class="col-sm-3">
                                <input  type="text" class="form-control" name="name"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">性别</label>
                            <div class="col-sm-3">
                                <input name="sex" type="radio" value="1"checked/>男
                                <input name="sex" type="radio" value="2"/>女
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">出生日期</label>
                            <div class="col-sm-3">
                                <input name="birthday" type="date" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">驾龄</label>
                            <div class="col-sm-3">
                                <input name="driveYear" type="text" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">学历</label>
                            <div class="col-sm-3">
                                <input name="education" type="text" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">籍贯</label>
                            <div class="col-sm-3">
                                <input name="origin" type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">服务单位</label>
                            <div class="col-sm-3">
                                <input name="serviceUnit" type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">身份证号</label>
                            <div class="col-sm-3">
                                <input name="identification" type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">联系方式</label>
                            <div class="col-sm-3">
                                <input name="contactInfo" type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">家庭住址</label>
                            <div class="col-sm-3">
                                <input name="homeAddress" type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">备注</label>
                            <div class="col-sm-3">
                                <input name="addition" type="text" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-8">
                                <button type="submit" class="btn btn-default col-sm-offset-4">登记</button>
                                <a href="/vehicle/info-add" class="btn btn-default">返回</a>
                            </div>
                        </div>
                        
                     </form>
                </div>
            </div>
        </div>
</body>
</html>