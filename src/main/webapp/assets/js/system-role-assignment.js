/**
 * 后勤服务中心管理信息系统 - 权限设置-角色分配
 */

$(function() {
	/* 修改用户角色 */
	$(".assignment_modify").click(
		function() {
			/* 写入的位置 */
			var a=$(".assignment_form").clone().css("display", "inline-block");
			var $location = $(this).parents().siblings(".roleName");
			var $userName = $(this).parents().siblings(".userName").text();
			$location.html(a);
			$("input.Name").val($userName);
			$(this).unbind("click");
		});

	
	/* 修改用户角色成功 */
	
	var a="0";
	a=$("#flag").text();
	
	if(a=="1"){
		alert("用户已经获取该权限角色，修改成功！");};
	
	
	});

