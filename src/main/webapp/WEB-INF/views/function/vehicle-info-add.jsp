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
    
</head>
<body>
    <div class="container" style="width:900px;">

        <div class="row">

            <div class="col-md-12 main">
                <div class="row">
                    <div class="col-md-12">
                        <ol class="breadcrumb">
                            <li>信息管理</li>
                            <li>全省车辆信息</li>
                            <li class="dropdown">信息登记</li>
                            <li class="dropdown active">
                                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">车辆信息登记 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/vehicle/person-add">驾驶员信息登记</a></li>
                                </ul>
                            </li>
                        </ol>
                    </div>
                </div>

               	<form class="form-horizontal" action = "/addVehicleInfo" method="post"  style="width:900px;">
                    <h4 style="text-align: center">车辆信息登记</h4>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">品牌</label>
                        <div class="col-sm-3">
                            <input  type="text" class="form-control" name="brand" maxlength="5" placeholder="5个字符以内" required/>
                        </div>
                        <label  class="col-sm-2 control-label">型号</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control"  name="model" maxlength="10" placeholder="10个字符以内" required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">车辆类型</label>
                        <div class="col-sm-3">
                            <input name="vehicleType" id="vehicleType" type="text" class="form-control" maxlength="2" placeholder="请输入2位标识代码" required/>
                        </div>
                        <label  class="col-sm-2 control-label">车座</label>
                        <div class="col-sm-3">
                        <input name="seat" class="form-control"  maxlength="2" placeholder="仅支持2位以内的数字" required
                        onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">国产/进口</label>
                        <div class="col-sm-3">
                            <input name="productSource" type="radio" value="1" checked/>国产
                            <input name="productSource" type="radio" value="2"/>进口
                        </div>
                        <label  class="col-sm-2 control-label">制造厂名称</label>
                        <div class="col-sm-3">
                            <input name="manufacturer" type="text" class="form-control" maxlength="10" placeholder="10个字符以内" required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">车身颜色</label>
                        <div class="col-sm-3">
                            <input name="color" type="text" class="form-control" maxlength="5" placeholder="5个字符以内" required/>
                        </div>
                        <label  class="col-sm-2 control-label">燃油种类</label>
                        <div class="col-sm-3">
                            <input name="fuelType" type="text" class="form-control" maxlength="5" placeholder="5个字符以内" required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">发动机号</label>
                        <div class="col-sm-3">
                            <input name="engineType" type="text" class="form-control" maxlength="8" placeholder="8个字符以内" required/>
                        </div>
                        <label  class="col-sm-2 control-label">VIN/车辆识别代码</label>
                        <div class="col-sm-3">
                            <input name="vin" id="vin" type="text" class="form-control" maxlength="17" placeholder="请输入17位VIN码" required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">出厂日期</label>
                        <div class="col-sm-3">
                            <input name="productDate" id="productDate" type="date" class="form-control" required/>
                        </div>
                        <label  class="col-sm-2 control-label">车主</label>
                        <div class="col-sm-3">
                            <input name="owner" type="text" class="form-control" maxlength="5" placeholder="5个字符以内" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">车辆价格</label>
                        <div class="col-sm-3">
                           <input name="price" type="text" class="form-control" maxlength="5" placeholder="仅支持数字，单位：万" required
                       	   onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
                        </div>
                        <label  class="col-sm-2 control-label">使用单位</label>
                        <div class="col-sm-3">
                            <input name="usedUnit" type="text" class="form-control" maxlength="10" placeholder="10个字符以内" required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <button type="submit" id="add" class="btn btn-default col-sm-offset-4">登记</button>
                            <button type="reset" class="btn btn-default">重置</button>
                        </div>
                    </div>                  
                </form>
                
            </div>
        </div>
    </div>
    <script>
	$(function() {
		$("#add").click(function(e){
 		var vehicleType=$('#vehicleType').val().length;
 		var vin=$('#vin').val().length;
 		var productDate=$('#productDate').val();
 		
		if( vehicleType != 2 && vehicleType !=0) {
			alert("请输入正确的车辆类型标识代码  ! ");
			return false;
		}
		if( vin != 17 && vin !=0) {
			alert("请输入正确的VIN/车辆识别代码  ! ");
			return false;
	    }
		if( productDate < "1886-01-29" || $('#productDate').val().length > 10) {
			alert("请输入有效出厂日期  ！ ");
			return false;
		}
 	});
});
	</script>
</body>
</html>