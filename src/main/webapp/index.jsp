<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>用户登录</title>
	</head>
	<body>
		<form action="/login" method="post">
			用户名:<input type="text" name="userName"/><br/>
			密码:<input type="password" name="password" /><br/>
			<input type="submit" value="登录"/>
		</form>
	</body>
</html>