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
	                            <select name="education" class="form-control">
							      <option value="无" selected="selected">无</option>
							      <option value="中专">中专</option>
							      <option value="大专">大专</option>
							      <option value="本科">本科</option>
							      <option value="研究生">研究生</option>
							      <option value="博士">博士</option>
							    </select>
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
                                <input name="identification" id="identification" type="text" class="form-control" maxlength="18" placeholder="请输入有效身份证号" required/>
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
		var d = '${infomation}';
		if (d.length != 0 && d != null)
			alert(d);
		console.log(d);
		
		$("#add").click(function(e){
	 		var identification=$('#identification').val();
	 		var contactInfo=$('#contactInfo').val();
	 		var contactInfoLenght=$('#contactInfo').val().length;
	 		var reg = /^1(3|4|5|7|8)\d{9}$/;
	 		
	 		//15位和18位身份证号码的正则表达式
	 		 var regIdCard=/^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/;

	 		 //如果通过该验证，说明身份证格式正确，但准确性还需计算
	 		 if(identification.match(regIdCard) == null && identification.length!=0)
	 			alert("身份证格式不正确!");
	 		 
	 		 else {
	 			 if(identification.length==18){
		 		   var idCardWi=new Array( 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 ); //将前17位加权因子保存在数组里
		 		   var idCardY=new Array( 1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2 ); //这是除以11后，可能产生的11位余数、验证码，也保存成数组
		 		   var idCardWiSum=0; //用来保存前17位各自乖以加权因子后的总和
		 		   for(var i=0;i<17;i++){
		 		    idCardWiSum+=identification.substring(i,i+1)*idCardWi[i];
		 		   }

		 		   var idCardMod=idCardWiSum%11;//计算出校验码所在数组的位置
		 		   var idCardLast=identification.substring(17);//得到最后一位身份证号码
		
		 		   //如果等于2，则说明校验码是10，身份证号码最后一位应该是X
		 		   if(idCardMod==2){
			 		    if(idCardLast!="X" && idCardLast!="x"){
			 		     	alert("请输入有效身份证号码 ！");
			 		    }
		 		   }
			    	//用计算出的验证码与最后一位身份证号码匹配，如果一致，说明通过，否则是无效的身份证号码
	 		   		else if(idCardLast!=idCardY[idCardMod])
		 		    	alert("请输入有效身份证号码 ！");
		 		 }
		 		  else if(identification.length!=18 && identification.length!=0){
		 		  	alert("身份证格式不正确!");
		 		}
	 		}
	 		 
			if( contactInfoLenght != 11 && contactInfoLenght !=0 ) {
				alert("电话号码长度不正确，请输入正确的手机号码 ! ");
				return false;
		    }
			if(contactInfoLenght !=0 && contactInfo.match(reg) == null){
				alert("电话号码格式不正确，请输入有效的手机号码 ! ");
				return false;
			}
			if( $('#birthday').val().length > 10 && $('#birthday').val().length != 0) {
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