<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="login-content" data-ng-app="materialAdmin">
 <head>
  <meta charset="UTF-8"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>四川省移动服务公司</title>
  <link href="/assets/css/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" type="text/css">
  <!-- CSS -->
  <link href="/assets/css/app.min.1.css" rel="stylesheet" type="text/css">
  <link rel = "Shortcut Icon" href="/assets/img/favicon.ico">
 </head>
 <body class="login-content" data-ng-controller="loginCtrl as lctrl">

    <div class="lc-block" id="l-login" data-ng-class="{'toggled':lctrl.login === 1}">
    	<h1 class="lean">登录</h1>
 	<form action="/login" method="post">
    	<div class="input-group m-b-20">
    		<span class="input-group-addon">
    			<i class="zmdi zmdi-account"></i>
    		</span>
     
            <div class="fg-line">
    			<input type="text" class="form-control"  name="userName" placeholder="用户名" regex="^\w{3,16}$"/>
    		</div>
    	</div>

        <div class="input-group m-b-20">  
    		<span class="input-group-addon">
    			<i class="zmdi zmdi-male"></i>
    		</span>
    		<div class="fg-line">
    			<input type="password" class="form-control" name="password" placeholder="密码" regex="^\w+"/>
    		</div>
    	</div>
    	<div class="clearfix"></div>
    
          <input type="submit" value="GO！" class="btn btn-login btn-danger btn-float">
      </form>
    		
    </div>
<script src="/assets/js/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="/assets/js/log.js"></script>
    <!-- Angular -->
    <script src="/assets/js/bower_components/angular/angular.min.js"></script>
    <script src="/assets/js/bower_components/angular-resource/angular-resource.min.js"></script>
    <script src="/assets/js/bower_components/angular-animate/angular-animate.min.js"></script>
    
    
    <!-- Angular Modules -->
    <script src="/assets/js/bower_components/angular-ui-router/release/angular-ui-router.min.js"></script>
    <script src="/assets/js/bower_components/angular-loading-bar/src/loading-bar.js"></script>
    <script src="/assets/js/bower_components/oclazyload/dist/ocLazyLoad.min.js"></script>
    <script src="/assets/js/bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js"></script>
    
    <!-- Common js -->
    <script src="/assets/js/bower_components/angular-nouislider/src/nouislider.min.js"></script>
    <script src="/assets/js/bower_components/ng-table/dist/ng-table.min.js"></script>
    
    <!-- Placeholder for IE9 -->
    <!--[if IE 9 ]>
        <script src="js/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
    <![endif]-->
    <!-- App level -->
    <script src="/assets/js/app.js"></script>
    <script src="/assets/js/controllers/main.js"></script>
    <script src="/assets/js/controllers/ui-bootstrap.js"></script>
    
    
    <!-- Template Modules -->
    <script src="/assets/js/modules/form.js"></script>
    <script type="text/javascript" language="javascript">
        function ale(message) {
            if (message == "user_null") {
                alert("用户不存在。");
            } else if (message == "psw_incorrect") {
                alert("密码错误。");
            }
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