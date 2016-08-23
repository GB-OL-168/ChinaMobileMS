<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>上市公司资产信息管理 - 信息登记</title>
    <link rel="stylesheet" href="/四川移动后勤服务中心管理信息系统/css/bootstrap.css">
    <link rel="stylesheet" href="/四川移动后勤服务中心管理信息系统/css/system.css">
    <script src="/四川移动后勤服务中心管理信息系统/js/jquery-1.9.1.js"></script>
    <script src="/四川移动后勤服务中心管理信息系统/js/bootstrap.js"></script>
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息登记 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="company-register-houses.html">信息查询</a></li>
                                <li><a href="company-count.html">信息统计</a></li>
                            </ul>
                        </li>
                        <li class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">房屋资产信息登记 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="company-register-rooms-add.html">房间信息登记</a></li>
                                <li><a href="company-register-furniture-add.html">办公家具信息登记</a></li>
                                <li><a href="company-register-lease-add.html">租赁设备信息登记</a></li>
                            </ul>
                        </li>
                    </ol>
                </div>
            </div>

            <form class="form-horizontal">
                <h3 style="text-align: center">房屋资产信息登记</h3>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">房屋编号</label>
                    <div class="col-sm-3">
                        <input  type="text" class="form-control" name=" "/>
                    </div>
                    <label  class="col-sm-2 control-label">建筑面积</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control"  name=" "/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">坐落地点</label>
                    <div class="col-sm-3">
                        <input name=" " type="text" class="form-control"/>
                    </div>
                    <label  class="col-sm-2 control-label">房屋间数</label>
                    <div class="col-sm-3">
                        <input name=" "  type="text" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">使用单位名称</label>
                    <div class="col-sm-3">
                        <input name=" " type="text" class="form-control"/>
                    </div>
                    <label  class="col-sm-2 control-label">结构类型</label>
                    <div class="col-sm-3">
                        <input name=" " type="text" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">建筑名称</label>
                    <div class="col-sm-3">
                        <input name=" " type="text" class="form-control"/>
                    </div>
                    <label  class="col-sm-2 control-label">房屋用途</label>
                    <div class="col-sm-3">
                        <input name=" " type="text" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">备注说明</label>
                    <div class="col-sm-3">
                        <input name=" " type="text" class="form-control"/>
                    </div>
                    <label  class="col-sm-2 control-label">建成年份</label>
                    <div class="col-sm-3">
                        <input name=" " type="date" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">是否租贷</label>
                    <div class="col-sm-3">
                        <input name=" " type="radio" value="y"/>是
                        <input name=" " type="radio" value="n"/>否
                    </div>
                    <label  class="col-sm-2 control-label">租贷来源</label>
                    <div class="col-sm-3">
                        <input name=" " type="text" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">租贷时间段</label>
                    <div class="col-sm-3">
                        <input name=" " type="date" class="form-control"/>
                    </div>
                    <label  class="col-sm-2 control-label">至</label>
                    <div class="col-sm-3">
                        <input name=" " type="date" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-8">
                        <button type="submit" class="btn btn-default col-sm-offset-4">登记</button>
                        <a href="company-register-lease.html" class="btn btn-default">返回</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>