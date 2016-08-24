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
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息登记 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="vehicle-info-find.html">信息查询</a></li>

                                </ul>
                            </li>
                            <li class="dropdown active">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">车辆信息登记 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="vehicle-person-add.html">驾驶员信息登记</a></li>
                                </ul>
                            </li>
                        </ol>
                    </div>
                </div>

                <form class="form-horizontal">
                    <h3 style="text-align: center">车辆信息登记</h3>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">品牌</label>
                        <div class="col-sm-3">
                            <input  type="text" class="form-control" name=" "/>
                        </div>
                        <label  class="col-sm-2 control-label">型号</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control"  name=" "/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">车辆类型</label>
                        <div class="col-sm-3">
                            <input name=" " type="text" class="form-control"/>
                        </div>
                        <label  class="col-sm-2 control-label">车座</label>
                        <div class="col-sm-3">
                            <input name=" "  type="text" class="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">国产/进口</label>
                        <div class="col-sm-3">
                            <input name=" " type="radio" value="y"/>国产
                            <input name=" " type="radio" value="n"/>进口
                        </div>
                        <label  class="col-sm-2 control-label">制造厂名称</label>
                        <div class="col-sm-3">
                            <input name=" " type="text" class="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">车身颜色</label>
                        <div class="col-sm-3">
                            <input name=" " type="text" class="form-control"/>
                        </div>
                        <label  class="col-sm-2 control-label">燃油种类</label>
                        <div class="col-sm-3">
                            <input name=" " type="text" class="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">发动机号</label>
                        <div class="col-sm-3">
                            <input name=" " type="text" class="form-control"/>
                        </div>
                        <label  class="col-sm-2 control-label">VIN/车辆识别代码</label>
                        <div class="col-sm-3">
                            <input name=" " type="type" class="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">出厂日期</label>
                        <div class="col-sm-3">
                            <input name=" " type="date" class="form-control"/>
                        </div>
                        <label  class="col-sm-2 control-label">车主</label>
                        <div class="col-sm-3">
                            <input name=" " type="text" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">车辆价格</label>
                        <div class="col-sm-3">
                            <input name=" " type="type" class="form-control"/>
                        </div>
                        <label  class="col-sm-2 control-label">使用单位</label>
                        <div class="col-sm-3">
                            <input name=" " type="type" class="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <a href="#"><button type="submit" class="btn btn-default col-sm-offset-4">登记</button></a>
                            <a href="" class="btn btn-default">返回</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>