<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/assets/css/login.css" media="screen" type="text/css" />
<link type="text/css" href="/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/md5.js" type="text/javascript"></script>
<link rel = "Shortcut Icon" href="/assets/img/favicon.ico">
<title>四川省移动后勤服务管理系统</title>
</head> 
<body>

<div id="level">
	<div id="content">
	<div id="img">
		<img id="cmccimg" src="/assets/img/CMCC_tittle.png">
	</div>
	<div id="window" style="display:none;">
	<div class="page page-front">
		<form action="/login" method="post" onsubmit="return check();">
		<div class="page-content">
			<div class="input-row">
				<label class="label fadeIn">账&nbsp;号</label>
				<input id="username"  name="userName" type="text"  class="input fadeIn delay1" required/>
			</div>
			<div class="input-row">
				<label class="label fadeIn delay2">密&nbsp;码</label>
				<input id='password' type="password" name="password"  class="input fadeIn delay3" required/>
			</div>
			<div class="input-row perspective">
				<button id="submit" class="button load-btn fadeIn delay4" type="submit">
					<span class="default"><i class="ion-arrow-right-b"></i>登录</span>
				</button>
			</div>
		</div>
		</form>
	</div>	
</div>
		<div id="gears">
			<div id="gears-static"></div>
			<div id="gear-system-1">
				<div class="shadow" id="shadow15"></div>
				<div id="gear15"></div>
				<div class="shadow" id="shadow14"></div>
				<div id="gear14"></div>
				<div class="shadow" id="shadow13"></div>
				<div id="gear13"></div>
			</div>
			<div id="gear-system-2">
				<div class="shadow" id="shadow10"></div>
				<div id="gear10"></div>
				<div class="shadow" id="shadow3"></div>
				<div id="gear3"></div>
			</div>
			<div id="gear-system-3">
				<div class="shadow" id="shadow9"></div>
				<div id="gear9"></div>
				<div class="shadow" id="shadow7"></div>
				<div id="gear7"></div>
			</div>
			<div id="gear-system-4">
				<div class="shadow" id="shadow6"></div>
				<div id="gear6"></div>
				<div id="gear4"></div>
			</div>
			<div id="gear-system-5">
				<div class="shadow" id="shadow12"></div>
				<div id="gear12"></div>
				<div class="shadow" id="shadow11"></div>
				<div id="gear11"></div>
				<div class="shadow" id="shadow8"></div>
				<div id="gear8"></div>
			</div>
			<div class="shadow" id="shadow1"></div>
			<div id="gear1"></div>
			<div id="gear-system-6">
				<div class="shadow" id="shadow5"></div>
				<div id="gear5"></div>
				<div id="gear2"></div>
			</div>
			<div id="chain-circle"></div>
			<div id="chain"></div>
		</div>
	</div>
</div>
	<script type="text/javascript" src='/assets/js/jquery-1.9.1.js'></script>
	<script type="text/javascript" src="/assets/js/login.js"></script>

	<script type="text/javascript">
	$(function(){
		$("#img").fadeIn(5000);
		$("#gears").fadeIn(5000);
	}
	);
	
	function check(){
		if ($("#password").val() != "") {
			var hash = hex_md5($("#password").val());
			document.getElementById("password").value = hash;
		}
	};
	</script>

 	<script type="text/javascript" language="javascript">
        function ale(message) {
            if (message == "user_null") {
                alert("用户不存在。");
            } else if (message == "psw_incorrect") {
                alert("密码错误。");
            }
            else if(message == "role_null") alert("该用户尚未分配角色，请联系管理员。");
            	
        }
    </script>
    <%
        String id = (String) request.getAttribute("id");
        if (id != null) {
            out.println("<script>ale('" + id + "')</script>");
        }
    %>
</body>
</html>