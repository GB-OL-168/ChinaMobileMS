<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<html lang="en">
<head>
<meta charset="UTF-8">
<title>信息管理-上市公司资产信息-使用情况</title>
<link rel="stylesheet" href="/assets/css/bootstrap.css">
<link rel="stylesheet" href="/assets/css/system.css">
<script src="/assets/js/jquery-1.9.1.js"></script>
<script src="/assets/js/bootstrap.js"></script>
<link rel="stylesheet" href="/assets/css/system-make.css">
<script src="/assets/js/fenye.js"></script>

</head>
<body>

	<div class="container" style="width: 1100px;">
		<div class="row">
			<div class="col-md-12 main">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">

							<li><a href="#">信息管理</a></li>
							<li><a href="#">上市公司资产信息</a></li>
							<li><a href="#">使用信息</a></li>
							<li class="active"><a href="javascript:void(0)">使用信息查询 </a></li>

						</ol>
					</div>
				</div>
				<hr>
				<form action="/company/info" style="width: 900px;">
					<div class="col-md-offset-3 col-md-2">
						<input type="radio" name="condition" value="use">在用 <input
							type="radio" name="condition" value="notuse">闲置
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" name="queryInformation"
								class="form-control input-sm" maxlength="10"
								placeholder="请输入家具类型"> <span class="input-group-btn">
								<button type="submit" class="btn  btn-sm">搜索</button>
							</span>
						</div>
					</div>
				</form>
			</div>

			<div class="col-md-12">
				<table class="table table-bordered table-striped"  id="idData"
					style="width: 1050px;">
					<h4 style="text-align: center;">查询结果</h4>
					<tr>
						<th>家具类型</th>
						<th>品牌型号</th>
						<th>规格</th>
						<th>数量</th>
						<th>备注</th>
						<th>操作</th>
					</tr>

					<c:forEach items="${listFuniture}" var="f">
						<tr class="a">
							<td class="officeFurnitureInfoId" style="display: none">${f.officeFurnitureInfoId}</td>
							<td class="furnitureType">${f.furnitureType}</td>
							<td class="brand">${f.brand}</td>
							<td class="specification">${f.specification}</td>
							<td class="count">${f.count}</td>
							<td class="remark">${f.remark}</td>
							<td class="usedSituation" style="display: none">${f.usedSituation}</td>
							<td><a class="modify" href="javascript:void(0)">修改</a>| 
							<a class="del" href="/deleteFurnitureInfo/${f.officeFurnitureInfoId}">删除</a></td>
						</tr>
					</c:forEach>
				</table>
				<br>
		<table width="70%" align="right">
	        <tr><td><div id="barcon" name="barcon"></div></td></tr>
	    </table>
			</div>
		</div>
	</div>

	<!-- 	新添加的地方-->
	<div id="code">
		<div class="title">
			<span>修改信息</span>
			<div class="close">
				<a href="javascript:void(0)" id="closebt"><img
					src="/assets/img/close.gif"></a>
			</div>
		</div>
		<form action="/updateFurnitureInfo" method="post">
			<div class="goodtxt">

				<table class="table table-bordered table-hover">
					<input type="hidden" name="officeFurnitureInfoId"
						class="officeFurnitureInfoId" />
					<tr>
						<td>家具类型</td>
						<td><input name="furnitureType" class="furnitureType" /></td>
					</tr>
					<tr>
						<td>品牌型号</td>
						<td><input name="brand" class="brand" /></td>
					</tr>
					<tr>
						<td>规格</td>
						<td><input name="specification" class="specification" /></td>
					</tr>
					<tr>
						<td>数量</td>
						<!-- <td><input type="number" name="count" class="count" /></td> -->
					<td><input class="count" type=text name="count"
						onkeyup="value=value.replace(/[^\d]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"
						></td>
					</tr>

					<tr>
						<td>备注</td>
						<td><input name="remark" class="remark" /></td>
					</tr>
					<tr>
						<td>使用情况</td>
						<td>
							<div class="form-group">
								<input name="usedSituation" type="radio" value="1" />在用 <input
									name="usedSituation" type="radio" value="0" />闲置
							</div>
						</td>
					</tr>
				</table>
			</div>
			<button type="submit" class="btn btn-sm one mod">修改</button>
			<button id="comeback" class="btn btn-sm one">返回</button>
		</form>
		
		
		
	</div>

	<script>
		$(function() {
			$(".mod").click(function(e){
				if(confirm("你确认要修改吗？")){
					return true;
				}
				else {
					e.preventDefault();
				};
			});
		
			$(".del").click(function(e){
				if(confirm("你确认要删除吗？")){
					return true;
				}
				else {
					e.preventDefault();
				};
			});
			
			
			$('.a>td>.modify').click(
					function() {
						var officeFurnitureInfoId = $(this).parent().siblings(
								".officeFurnitureInfoId").text();
						var furnitureType = $(this).parent().siblings(
								".furnitureType").text();
						var brand = $(this).parent().siblings(".brand").text();
						var specification = $(this).parent().siblings(
								".specification").text();
						var count = $(this).parent().siblings(".count").text();
						var remark = $(this).parent().siblings(".remark")
								.text();
						var usedSituation = $(this).parent().siblings(
								".usedSituation").text();

						if (usedSituation == 1) {
							$(".form-group").find('input:eq(0)').attr(
									"checked", "checked");
						} else {
							$(".form-group").find('input:eq(1)').attr(
									"checked", "checked");
						}
						$("input.officeFurnitureInfoId").val(
								officeFurnitureInfoId);
						$("input.furnitureType").val(furnitureType);
						$("input.brand").val(brand);
						$("input.specification").val(specification);
						$("input.count").val(count);
						$("input.remark").val(remark);
						$("input.usedSituation").val(usedSituation);
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
					obj
							.css({
								'top' : ($(window).height() - $('#code')
										.height()) * 0.2,
								'left' : 300
							/* left_position */
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
					/* top_position */
					}, 200, 'linear');
				}
			}

		});
	</script>

</body>
</html>