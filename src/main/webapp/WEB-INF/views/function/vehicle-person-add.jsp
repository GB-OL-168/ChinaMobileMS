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
		.star{
        	color:red;
        	font-size:20px;
        	display:inline;
        	padding-top:8px;
        }
	
	</style>
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
                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">驾驶员信息登记 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="/vehicle/info-add">车辆信息登记</a></li>
                                    </ul>
                                </li>
                            </ol>
                        </div>
                    </div>

                    <form class="form-horizontal" action = "/addVehiclePerson" method="post"  style="width:900px;">
                        <h4 style="text-align: center">驾驶员信息登记</h4>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">姓名</label><span class="star">*</span>
                            <div class="col-sm-3">
                                <input  type="text" class="form-control" name="name" maxlength="5" placeholder="5个字符以内" required/>
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
                            <label  class="col-sm-offset-3 col-sm-2 control-label">出生日期</label><span class="star">*</span>
                            <div class="col-sm-3">
                                <input name="birthday" id="birthday" type="date" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">驾龄</label><span class="star">*</span>
                            <div class="col-sm-3">
                                <input name="driveYear" type="text" class="form-control" maxlength="5" placeholder="5个字符以内" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">学历</label><span class="star">*</span>
                            <div class="col-sm-3">
                                <input name="education" type="text" class="form-control" maxlength="5" placeholder="请输入最高学历" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">籍贯</label><span class="star">*</span>
                            <div class="col-sm-3">
                                <input name="origin" type="text" class="form-control" maxlength="5" placeholder="5个字符以内" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">服务单位</label><span class="star">*</span>
                            <div class="col-sm-3">
                                <input name="serviceUnit" type="text" class="form-control" maxlength="10" placeholder="10个字符以内" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">身份证号</label><span class="star">*</span>
                            <div class="col-sm-3">
                                <input name="identification" id="identification" type="text" class="form-control" maxlength="18" placeholder="请输入18位身份证号" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">联系方式</label><span class="star">*</span>
                            <div class="col-sm-3">
                                <input name="contactInfo" id="contactInfo" type="text" class="form-control" maxlength="11" placeholder="请输入11位手机号码" required
                                onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">家庭住址</label><span class="star">*</span>
                            <div class="col-sm-3">
                                <input name="homeAddress" type="text" class="form-control" maxlength="20" placeholder="20个字符以内" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-offset-3 col-sm-2 control-label">备注</label>
                            <div class="col-sm-3">
                                <input name="addition" type="text" class="form-control" maxlength="20" placeholder="20个字符以内，可不填" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-8">
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
 		var identification=$('#identification').val().length;
 		var contactInfo=$('#contactInfo').val().length;
 		
		if( identification != 18 && identification !=0) {
			alert("请输入正确的身份证号码 ! ");
			return false;
		}
		if( contactInfo != 11 && contactInfo !=0) {
			alert("请输入正确的手机号码 ! ");
			return false;
	    }
		if( $('#birthday').val().length > 10) {
			alert("请输入有效出生日期 ！ ");
			return false;
		}
		if( $('#birthday').val().length == 10) {
			var birthday=$("#birthday").val();
			var date = new Date();
		    var seperator1 = "-";
		    var seperator2 = ":";
		    var month = date.getMonth() + 1;
		    var strDate = date.getDate();
		   	if (month >= 1 && month <= 9) {
		        month = "0" + month;
		    }
		    if (strDate >= 0 && strDate <= 9) {
		        strDate = "0" + strDate;
		    }
		    var nowDate1 = (date.getFullYear()-18) + seperator1 + month + seperator1 + strDate;/* 当前时间-18年  */
		    var nowDate2 = (date.getFullYear()-70) + seperator1 + month + seperator1 + strDate;/* 当前时间-70年  */
		    if(birthday>nowDate1||birthday<nowDate2){
				alert("18周岁以上可考取驾照，请填写正确的出生日期 ！ ");
				return false;
		    }
	    }
 	});
});
	</script>
</body>
</html>