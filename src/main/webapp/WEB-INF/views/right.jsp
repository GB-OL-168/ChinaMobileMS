<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>right</title>
    <link href="/assets/css/index.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="right">
     <div class="col-md-10 main">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb">
                    <li><a href="#">系统设置</a></li>
                    <li><a href="#">账号管理</a></li>
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">房屋资产登记 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="company-register-rooms.html">房间信息登记</a></li>
                            <li><a href="company-register-furniture.html">办公家具信息</a></li>
                            <li><a href="company-register-lease.html">租赁设备登记</a></li>
                        </ul>
                    </li>
                </ol>
            </div>
            <!--<div class="col-md-3">-->
                <!--<a class="btn btn-default btn-xs" href="company-user-add.html">添加账户</a>-->
            <!--</div>-->

            <!--<div class="col-md-4">-->
                <!--<div class="input-group">-->
                    <!--<input type="text" class="form-control input-sm" placeholder="Search for User">-->
					      <!--<span class="input-group-btn">-->
					        <!--<button class="btn btn-default btn-sm" type="button">Go!</button>-->
					      <!--</span>-->
                <!--</div>-->
            <!--</div>-->
        </div>


        <div>
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#tab1" aria-controls="home" role="tab" data-toggle="tab">房屋状况信息</a></li>
                <li role="presentation"><a href="#tab2" aria-controls="profile" role="tab" data-toggle="tab">办公区域划分</a></li>
                <li role="presentation"><a href="#tab3" aria-controls="messages" role="tab" data-toggle="tab">土地使用状况</a></li>
                <li role="presentation"><a href="#tab4" aria-controls="settings" role="tab" data-toggle="tab">房屋来源与权属数据</a></li>
                <li role="presentation"><a href="#tab5" aria-controls="settings" role="tab" data-toggle="tab">图片资料上传</a></li>
                <li role="presentation"><a href="#tab6" aria-controls="settings" role="tab" data-toggle="tab">租赁信息</a></li>
            </ul>
            <br>
            <!-- Tab panes -->
            <form class="form-horizontal">
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab1">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">房屋编号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="房屋编号">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">房屋名称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="房屋名称">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">坐落地点</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="坐落地点">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">使用单位名称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="使用单位名称">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">建筑名称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="建筑名称">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">建筑面积</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="建筑面积">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">房屋层数</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="房屋层数">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">房屋间数</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="房屋间数">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">结构类型</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="结构类型">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">房屋用途</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="房屋用途">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">建成年份</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" placeholder="建成年份">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">是否租赁</label>
                            <div class="col-sm-10">
                                <select class="form-control">
                                    <option>Yes</option>
                                    <option>No</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">租赁来源</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="租赁来源">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">租赁时间段</label>
                            <div class="col-sm-4">
                                <input type="date" class="form-control" placeholder="租赁时间段">
                            </div>
                            <div class="col-sm-4">
                                <input type="date" class="form-control" placeholder="租赁时间段">
                            </div>
                        </div>
                    </div>


                    <div role="tabpanel" class="tab-pane" id="tab2">

                        <div class="form-group">
                            <label class="col-sm-1 control-label">楼层</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" placeholder="楼层">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-1 control-label">建筑面积</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" placeholder="建筑面积">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-1 control-label">楼层使用比</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" placeholder="楼层使用比">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-1 control-label">使用类型</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" placeholder="使用类型">
                            </div>
                        </div>
                    </div>


                    <div role="tabpanel" class="tab-pane" id="tab3">

                        <div class="form-group">
                            <label class="col-sm-2 control-label">土地证号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="土地证号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">使用面积</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="使用面积">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">权属性质</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="权属性质">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">权证保管单位</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="权证保管单位">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">使用年限</label>
                            <div class="col-sm-4">
                                <input type="date" class="form-control" placeholder="使用年限">
                            </div>
                            <div class="col-sm-4">
                                <input type="date" class="form-control" placeholder="使用年限">
                            </div>
                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="tab4">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">取得方式</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="取得方式">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">取得时间</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="取得时间">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">所有权人</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="所有权人">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">证书编号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="证书编号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">发证日期</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" placeholder="发证日期">
                            </div>
                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="tab5">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">房屋图纸</label>
                            <div class="col-sm-10">
                                <input type="file" accept="image/*" placeholder="房屋图纸">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">房屋图片</label>
                            <div class="col-sm-10">
                                <input type="file" accept="image/*" placeholder="房屋图片">
                            </div>
                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="tab6">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">租赁范围</label>
                            <div class="col-sm-10">
                                <select class="form-control">
                                    <option>房屋整体</option>
                                    <option>楼层</option>
                                    <option>房间</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">租赁信息</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="租赁信息">
                            </div>
                        </div>
                    </div>


                </div>


                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">submit</button>
                        <a href="company-register-houses.html" class="btn btn-default">Back</a>
                    </div>
                </div>

            </form>

        </div>
    </div>
</div>

<script src="/assets/js/jquery-1.9.1.js"></script>
<script src="/assets/js/bootstrap.js"></script>
</body>
</html>