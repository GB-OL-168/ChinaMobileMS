/**
 * 判断管理权限角色
 */

$(function(){
	var a="0";
	var a=$("#flag").text();
	if(a=="1"){
		alert("该权限角色已被分配到某用户中，删除失败！");
	}
	if(a=="-1"){
		alert("删除成功！");
	}
	if(a=="2"){
		alert("新增失败！");
	}
	if(a=="-2"){
		alert("新增成功！");
	}if(a=="-3"){
		alert("修改成功！");	
	}
	
});

function deleted(roleId){
	if(confirm("你确定要删除此角色吗？")){
		$.ajax({
			url:'/delRole/tryDelete',
			data:{roleId:roleId},
			success:function(data){
				if(data.key == 'true'){
					//shuaxin
					alert("删除成功");
					location.href = "/system/role-authorization";
				}
				else{
					alert("该权限角色已被分配到某用户中，删除失败！");
				}
			},
			error:function(a,b,c){
				alert(c);
			}
		});
	}
	else{
		return false;
	};
};
	