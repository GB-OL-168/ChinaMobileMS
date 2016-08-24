<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>上市公司资产信息管理 - 信息登记</title>
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

            <form class="form-horizontal" action="/addAH" method="get">
                <h3 style="text-align: center">房屋资产信息登记</h3>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">房屋编号</label>
                    <div class="col-sm-3">
                        <input  type="text" class="form-control" name="assetInfoId"/>
                    </div>
                    <label  class="col-sm-2 control-label">建筑面积</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control"  name="buildingArea"/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">坐落地点</label>
                    <div class="col-sm-3">
                        <input name="location" type="text" class="form-control"/>
                    </div>
                    <label  class="col-sm-2 control-label">房屋间数</label>
                    <div class="col-sm-3">
                        <input name="roomCount"  type="text" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">使用单位编号</label>
                    <div class="col-sm-3">
                        <input name="usedBranchId" type="text" class="form-control"/>
                    </div>
                    <label  class="col-sm-2 control-label">结构类型</label>
                    <div class="col-sm-3">
                        <input name="structureType" type="text" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">建筑名称</label>
                    <div class="col-sm-3">
                        <input name="buildingName" type="text" class="form-control"/>
                    </div>
                    <label  class="col-sm-2 control-label">房屋用途</label>
                    <div class="col-sm-3">
                        <input name="roomUsage" type="text" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">备注说明</label>
                    <div class="col-sm-3">
                        <input name="remark" type="text" class="form-control"/>
                    </div>
                    <label  class="col-sm-2 control-label">建成年份</label>
                    <div class="col-sm-3">
                        <input name="addition" type="date" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">是否租贷</label>
                    <div class="col-sm-3">
                        <input name="isLoan" type="radio" value="1"/>是
                        <input name="isLoan" type="radio" value="0"/>否
                    </div>
                    <label  class="col-sm-2 control-label">租贷来源</label>
                    <div class="col-sm-3">
                        <input name="loanSource" type="text" class="form-control" value="null"/>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">租贷时间段</label>
                    <div class="col-sm-3">
                        <input name="loanTimeStart" type="date" class="form-control" value="null"/>
                    </div>
                    <label  class="col-sm-2 control-label">至</label>
                    <div class="col-sm-3">
                        <input name="loanTimeEnd" type="date" class="form-control" value="null"/>
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