<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>全省车辆信息-驾驶员信息查询</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
<!-- 	<link rel="stylesheet" href="/assets/css/vehicle-person-find.css">
 -->
	<link rel="stylesheet" href="/assets/css/system-make.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<script src="/assets/js/bootstrap.js"></script>
    <script src="/assets/js/fenye.js"></script> 

</head>
<body>
        <div class="container" style="width:1100px;">
            <div class="row">
                <div class="col-md-12 main">
                    <div class="row">
                        <div class="col-md-12">
                            <ol class="breadcrumb">
                                <li>信息管理</li>
                                <li>全省车辆信息</li>
                                <li>信息查询</li>
                                <li class="dropdown active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">驾驶员信息查询 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="/vehicle/info-find">车辆信息查询</a></li>
                                    </ul>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <br>
                   	<form action = "/findVehiclePerson" method="post">
                        <div class="col-md-offset-3 col-md-3">
                            <input type="radio" name="condition" value="name" checked>姓名
                            <input type="radio" name="condition" value="sex">性别
                            <input type="radio" name="condition" value="serviceUnit">服务单位
                        </div>
                        <div class="col-md-4">
                            <div class="input-group">
                                <input type="text" name="queryInformation" class="form-control input-sm"  maxlength="10" placeholder="请输入信息，10个字符以内">
                                      <span class="input-group-btn">
                                      <button type="submit" class="btn btn-default btn-sm">搜索</button>
                                      </span>
                            </div>
                        </div>
                     </form>     
                </div>
            </div>
            <br>
            <table id="idData" class="table table-hover table-striped table-bordered"  style="width:1100px;">
                <tr>
                	<th>编号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>出生日期</th>
                    <th>驾龄</th>
                    <th>学历</th>
                    <!-- <th>籍贯</th> -->
                    <th>服务单位</th>
                    <!-- <th>身份证号</th> -->
                    <th>联系方式</th>
                    <th>家庭住址</th>
                    <th>备注</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${listDriverInfo}" var="a" varStatus="status">
				    <tr class="a">
				    	<td class="driverId" style="display: none">${a.driverId}</td>
				    	<td>${ status.index + 1}</td>
						<td class="name">${a.name}</td>
						<td>
							<c:choose>
								<c:when test="${a.sex==1}">男</c:when>
								<c:when test="${a.sex==2}">女</c:when>
							</c:choose>
						</td>
						<td>${a.birthday}</td>
						<td class="driveYear">${a.driveYear}</td>
						<td>${a.education}</td>
						<td class="origin" style="display: none">${a.origin}</td>
						<td class="serviceUnit">${a.serviceUnit}</td>
						<td class="identification" style="display: none">${a.identification}</td>
						<td class="contactInfo">${a.contactInfo}</td>
						<td class="homeAddress">${a.homeAddress}</td>
						<td class="addition">${a.addition}</td>
						<td><a class="modify" href="javascript:void(0)">修改</a>|
						<a href="javascript:void(0)" onclick="deleteTable(${a.driverId})">删除</a></td>
					</tr>
				</c:forEach>
            </table>
            <br>
				<table width="70%" align="right">
		           <tr><td><div id="barcon" name="barcon"></div></td></tr>
		        </table>
        </div>
        
  <!-- 	新添加的地方-->
	<div id="code">
		<div class="title">
		    <span>相关信息</span>
		    <div class="close">
				<a href="javascript:void(0)" id="closebt"><img src="/assets/img/close.gif"></a>
			</div>

		</div>
		<form action="/updateVehiclePerson" method="post">
			<div class="goodtxt">

				<table class="table table-bordered table-hover">
					<input type="hidden" name="driverId" class="driverId" />
					<tr>
						<td>姓名</td>
						<td><input name="name" class="name" disabled/></td>
					</tr>
					<tr>
						<td>籍贯</td>
						<td><input name="origin" class="origin" disabled/></td>
					</tr>
					<tr>
						<td>身份证号</td>
						<td><input name="identification" class="identification" disabled/></td>
					</tr>
					<tr>
						<td>驾龄</td>
						<td><input name="driveYear" class="driveYear" maxlength="5" placeholder="5个字符以内" required/></td>
					</tr>
					<tr>
						<td>联系方式</td>
						<td><input name="contactInfo" class="contactInfo" id="contactInfo" maxlength="11" placeholder="请输入11位手机号码" required
						onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
					</tr>
					<tr>
						<td>服务单位</td>
						<td><input name="serviceUnit" class="serviceUnit" maxlength="10" placeholder="10个字符以内" required/></td>
					</tr>
					<tr>
						<td>家庭住址</td>
						<td><input name="homeAddress" class="homeAddress" maxlength="20" placeholder="20个字符以内" required/></td>
					</tr>
					<tr>
						<td>备注</td>
						<td><input name="addition" class="addition" maxlength="20" placeholder="20个字符以内，可不填"/></td>
					</tr>

				</table>
			</div>
			<button type="submit" class="btn btn-info one " id="add">修改</button>
			<button id="comeback" class="btn btn-info one">返回</button>
		</form>
	</div>

	<script>
		$(function() {
			var d = '${infomation}';
			if (d.length != 0 && d != null)
				alert(d);
			console.log(d);
			
			$('.a>td>.modify').click(
					function() {
						var driverId = $(this).parent().siblings(".driverId").text();
						var name = $(this).parent().siblings(".name").text();
						var origin = $(this).parent().siblings(".origin").text();
						var identification = $(this).parent().siblings(".identification").text();
						var driveYear = $(this).parent().siblings(".driveYear").text();
						var contactInfo = $(this).parent().siblings(".contactInfo").text();
						var serviceUnit = $(this).parent().siblings(".serviceUnit").text();
						var homeAddress = $(this).parent().siblings(".homeAddress").text();
						var addition = $(this).parent().siblings(".addition").text();						

						$("input.driverId").val(driverId);
						$("input.name").val(name);
						$("input.origin").val(origin);
						$("input.identification").val(identification);
						$("input.driveYear").val(driveYear);
						$("input.contactInfo").val(contactInfo);
						$("input.serviceUnit").val(serviceUnit);
						$("input.homeAddress").val(homeAddress);
						$("input.addition").val(addition);

						$('#code').center();
						$('#goodcover').show();
						$('#code').fadeIn();
					});
			$('#closebt').click(function() {
				$('#code').hide();
				$('#goodcover').hide();
			});
			$('#goodcover').click(function() {
				$('#code').hide();
				$('#goodcover').hide();
			});
			$("#comeback").click(function(e) {
				$("#code").hide();
				e.preventDefault();
			});
			jQuery.fn.center = function(loaded) {
				var obj = this;

				if (!loaded) {

					obj.css({
						'position' : 'absolute'
					});
					obj.css({
								'top' : ($(window).height() - $('#code')
										.height()) * 0.2,
								'left' : 300
							});
					$(window).bind('resize', function() {
						obj.center(!loaded);
					});
					$(window).bind('scroll', function() {
						obj.center(!loaded);
					});

				} else {
					obj.stop();
					obj.css({
						'position' : 'absolute'
					});
					obj.animate({
						'top' : 100
					}, 200, 'linear');
				}
			}

		});
	</script>
	
	<script>
	$(function() {
		$("#add").click(function(e){
		var contactInfo=$('#contactInfo').val();
 		var contactInfoLenght=$('#contactInfo').val().length;
 		var reg = /^1(3|4|5|7|8)\d{9}$/;
		if( contactInfoLenght != 11 && contactInfoLenght !=0 ) {
			alert("电话号码长度不正确，请输入正确的手机号码 ! ");
			return false;
	    }
		if(contactInfoLenght !=0 && contactInfo.match(reg) == null){
			alert("电话号码格式不正确，请输入有效的手机号码 ! ");
			return false;
		}
		if(confirm('确定要修改此信息吗？')){
			return true;
		}
		return false;
 	  });
	});
	
	function deleteTable (driverId){
		var isDelete  = confirm("是否确认删除此驾驶员信息 ? ");
		if(isDelete){
			
		$.ajax({
			type: "POST",
			url:"/deleteVehiclePerson",
			data:{
				driverId:driverId
			},
			dataType:"json",
			success:function(flag){
				if(flag==true){
					alert("删除该驾驶员信息成功 ！ ");
					window.location.href ="/vehicle/person-find";
				}
				else
					alert("删除该驾驶员信息失败 ！ ");
			},
			error:function(e){
				alert("连接服务器失败 ！ ");
			}		
		});
	  	}
	};
	</script>

</body>
</html>