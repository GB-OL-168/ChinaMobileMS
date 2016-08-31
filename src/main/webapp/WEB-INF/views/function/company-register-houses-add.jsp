<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>上市公司资产信息管理 - 信息登记</title>
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
							<li><a href="javascript:void(0)">信息管理</a></li>
							<li><a href="javascript:void(0)">上市公司资产信息</a></li>
							<li><a href="javascript:void(0)">信息登记</a></li>
							<li class="dropdown"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown" role="button">房屋资产信息登记 
								<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/register/rooms-add">房间信息登记</a></li>
									<li><a href="/register/furniture-add">办公家具信息登记</a></li>
									<li><a href="/register/lease-add">租赁设备信息登记</a></li>
								</ul>
							</li>
						</ol>
					</div>
				</div>

				<form class="form-horizontal col-md-12"  style="width:900px;" action="/addAH" method="get">
					<h4 style="text-align: center">房屋资产信息登记</h4><br>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">坐落地点</label>
						<div class="col-sm-3">
							<input name="location" type="text" class="form-control" required />
						</div>
						<label class="col-sm-2 control-label">建筑面积</label>
						<div class="col-sm-3">
							<input name="buildingArea"class="form-control" placeholder="仅支持数字" required
                       	 	onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">使用公司名称</label>
						<div class="col-sm-3">
							<select name="company" class="company form-control" required>
								<option value="">--请选择公司--</option>
								<c:forEach items="${listCompany}" var="c">
									<option value="${c.companyId }">${c.companyName}</option>
								</c:forEach>
							</select>
						</div>
						<label class="col-sm-2 control-label">使用部门名称</label>
						<div class="col-sm-3">
							<select name="usedBranchId" class="company form-control" required>
								<option value="">--请选择部门--</option>
								<c:forEach items="${listBranch}" var="b">
									<option style="display: none;" class="${b.companyId}"
										value="${b.branchId }">${b.branchName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">建筑名称</label>
						<div class="col-sm-3">
							<input name=buildingName type="text" class="form-control" required/>
						</div>
						<label class="col-sm-2 control-label">结构类型</label>
						<div class="col-sm-3">
							<input name="structureType" type="text" class="form-control"  required/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">层数</label>
						<div class="col-sm-3">
							<input name="floorCount" class="form-control" placeholder="仅支持数字" required
                       	 	onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						</div>
						<label class="col-sm-2 control-label">房间数</label>
						<div class="col-sm-3">
							<input name="roomCount" class="form-control" placeholder="仅支持数字" required
                       	 	onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">房屋用途</label>
						<div class="col-sm-3">
							<input name="roomUsage" type="text" class="form-control" required/>
						</div>
						<label class="col-sm-2 control-label">建成年份</label>
						<div class="col-sm-3">
							<input name="addition" type="date" class="form-control" required/>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">备注说明</label>
						<div class="col-sm-3">
							<input name="remark" type="text" class="form-control" required/>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">是否租贷</label>
						<div class="col-sm-3">
							<input name="isLoan" type="radio" value="1" />是 
							<input name="isLoan" type="radio" value="0" checked/>否
						</div>
						<label class="col-sm-2 control-label is-loan "  style="display:none">租贷来源</label>
						<div class="col-sm-3 is-loan" style="display:none">
							<input name="loanSource" type="text" class="form-control" value=""/>
						</div>
					</div>
					<div class="form-group is-loan " style="display:none">
						<label class="col-sm-2 control-label">租贷时间段</label>
						<div class="col-sm-3">
							<input name="loanTimeStart" type="date" class="form-control" id="loanTimeStart" value="2016-01-01"/>
						</div>
						<label class="col-sm-2 control-label loan">至</label>
						<div class="col-sm-3">
							<input name="loanTimeEnd" type="date" class="form-control" id="loanTimeEnd" value="2016-01-01"/>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-8">
							<button type="submit" class="btn btn-default col-sm-offset-4" id="add">登记</button>
							&nbsp;&nbsp;<button type="reset" class="btn btn-default" id=reset>重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		var all = 1;
		$(function() {			
			$(".company").change(function() {
				$(".branch").val("");
				$("option." + all).css("display", "none");
				var b = $(".company").val();
				all = b;
				$("option." + b).css("display", "block");
			});
			$("input[name='isLoan']").click(function(e) {
				var val = $( this ).val();
				if( val == '1' ) {
					$('.is-loan').show();
				} else {
					$('.is-loan').hide();
				}				
			})
		});
		/* 点重置时隐藏租赁信息  */
		$(function(){
		 	$("#reset").click(function(e){
		 		var isLoan=$("#isLoan").val();
				if( isLoan == '1' ) {
					$('.is-loan').show();
				} else {
					$('.is-loan').hide();
			    }
		 	});
		});
		/* 判断租赁时间段是否符合  */
	 	$(function(){
		 	$("#add").click(function(e){
		 		var loanTimeStart=$("#loanTimeStart").val();
		 		var loanTimeEnd=$("#loanTimeEnd").val();
			    if(loanTimeStart>loanTimeEnd){
			    	alert("结束时间不得早于开始时间，请输入正确的租赁时间段! ");
						return false;
			    }
			    if(loanTimeStart == "" || loanTimeEnd == ""){
			    	alert("租赁时间不得为空，请输入正确的租赁时间段! ");
						return false;
			    }
		 	});
		}); 
	</script>
</body>
</html>