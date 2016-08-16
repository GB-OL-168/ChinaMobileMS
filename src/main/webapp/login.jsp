<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
	<script type="text/javascript" language="javascript">
		function ale(message) {
			if (message == "user_null") {
				alert("用户不存在。");
			} else if (message == "psw_incorrect") {
				alert("密码错误。");
			}
		}
	</script>

	<form action="/login" method="post">
		用户名:<input type="text" name="userName" /><br /> 密码:<input
			type="password" name="password" /><br /> <input type="submit"
			value="登录" />
	</form>
	<%
		String id = (String) request.getAttribute("id");
		if (id != null) {
			out.println("<script>ale('" + id + "')</script>");
		}
	%>
</body>
</html>