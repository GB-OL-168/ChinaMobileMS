/**
 * made by 叶绪创
 * 查看具体说明
 * 修改临时需求弹出框
 * 查看审核进度
 */

		$(function() {
			/*查看审核进度功能 */
			$('.check_view').click(function(){
				var statusId=$(this).parents().siblings(".statusId").html();
				var context;
				if(statusId=="0"){
					context = "未开始";
					$("img.context").attr('src','/assets/img/progress_0.png');
				};
				if(statusId=="1"){
					context = "未开始<br>丨<br>拒绝受理";
					$("img.context").attr('src','/assets/img/progress_1.png');
				};
				if(statusId=="2"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审";
					$("img.context").attr('src','/assets/img/progress_2.png');
				};
				if(statusId=="4"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审<br>丨<br>一审拒绝";
					$("img.context").attr('src','/assets/img/progress_4.png');
				};
				if(statusId=="5"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审<br>丨<br>一审通过<br>丨<br>等待二审";
					$("img.context").attr('src','/assets/img/progress_5.png');
				};
				if(statusId=="6"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审<br>丨<br>一审通过<br>丨<br>等待二审<br>丨<br>二审通过";
					$("img.context").attr('src','/assets/img/progress_6.png');
				};
				if(statusId=="7"){
					context = "未开始<br>丨<br>开始<br>丨<br>等待一审<br>丨<br>一审通过<br>丨<br>等待二审<br>丨<br>二审拒绝";
					$("img.context").attr('src','/assets/img/progress_7.png');
				};
				$('#check_div').center();
				$('#check_div').fadeIn();
			});
			
			
			
			/* 修改临时需求功能 */
			$('.modify').click(function(){
				var temporaryDemand=$(this).parent().siblings(".temporaryDemand").text();
				var propertyTableId=$(this).parent().siblings(".propertyTableId").text();
				$("textarea.temporaryDemand").val(temporaryDemand);
				$("input.propertyTableId").val(propertyTableId);
				$('#modify_div').center();
				$('#modify_div').fadeIn();
			});
			

				/* 查看需求点击详情功能 */
			$('.show').click(function() {
				var receptionService=$(this).parent().siblings(".receptionService").text();
				
				var diningService=$(this).parent().siblings(".diningService").text();
				var enviromentMaintain=$(this).parent().siblings(".enviromentMaintain").text();
				var engineeringManage=$(this).parent().siblings(".engineeringManage").text();
				var firefightingManage=$(this).parent().siblings(".firefightingManage").text();
				var addition=$(this).parent().siblings(".addition").text();
				var serviceLocation=$(this).parent().siblings(".serviceLocation").text();
				var serviceCommand=$(this).parent().siblings(".serviceCommand").text();				
				$("p.receptionService").html(receptionService);
				
				$("p.diningService").html(diningService);
				$("p.enviromentMaintain").html(enviromentMaintain);
				$("p.engineeringManage").html(engineeringManage);
				$("p.firefightingManage").html(firefightingManage);
				$("p.addition").html(addition);
				$("p.serviceLocation").html(serviceLocation);
				$("p.serviceCommand").html(serviceCommand);
				

				$('#code').center();
				$('#code').fadeIn();
			});
				
				
			$('#closebt1').click(function() {
				$('#code').hide();
			});
			
			$('#closebt2').click(function() {
				$('#modify_div').hide();
			});
			
			$('#modify_closed_btn').click(function(e) {
				$('#modify_div').hide();
				e.preventDefault();
			});
			
			$('#closebt').click(function() {
				$('#check_div').hide();
			});
			
			jQuery.fn.center = function(loaded) {
				var obj = this;

				if (!loaded) {

					obj.css({
						'position': 'absolute'
					});
					obj.css({
						'top': ($(window).height() - $('#code').height()) * 0.05,
						'left': 300
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
						'position': 'absolute'
					});
					obj.animate({
						'top':100 
							/* top_position */
					}, 200, 'linear');
				}
			}

		});
	