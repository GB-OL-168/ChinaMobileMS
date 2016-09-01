<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 	import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
	<link rel="stylesheet" href="/assets/css/bootstrap.css">
	<link rel="stylesheet" href="/assets/css/system.css">
	<script src="/assets/js/jquery-1.9.1.js"></script>
	<!-- -<script src="/assets/js/bootstrap.js"></script> -->
	<script src="http://lib.sinaapp.com/js/jquery/1.9.1/jquery-1.9.1.min.js"></script>
</head>
<body>
    <div class="container" style="width:900px;">
        <div class="row">
		    <div class="col-md-12"  style="margin-bottom:10px;" >
				<ol class="breadcrumb">
				  <li><a href="javascript:void(0)">后勤服务考评</a></li>
				  <li><a href="javascript:void(0)">物业服务考评</a></li>
				  <li class="dropdown active">
				  	<a href="javascript:void(0)">新建考评表</a></li>
				</ol>
			</div>
           <form id="submitTable" action="/createInvestigationTable" method="post" >
               <table id="form_make" class='table table-bordered table-hover center'>
               	   <div style="margin-left:350px;">
   		             	<a style="display: inline-block">调查表名称</a>
               			&nbsp&nbsp<input id="investigationItmeName" type="text" required name="investigationItmeName" maxlength="12"/>
               	   </div>
                   <tr>
                       <th>考评项目</th>
                       <th>考评标准</th>
                   </tr>
                   <tr>
                       <td><input class="investigationItemValue" type="text" required name="InvestigationItemsEntityList[0].investigationItemValue" maxlength="12"></td>
                       <td><textarea class="investigationStandadard"name="InvestigationItemsEntityList[0].investigationStanddard" required rows="3" cols="50"></textarea></td>
                   </tr>
               </table>
               <button class="btn btn-info" type="button" id="add" >增加考核内容</button>
               <button class="btn btn-info" id="save" type="submit" >创建表格</button>
           </form>
        </div>
    </div>

<script>
	var index=0;
      $form_make=$("#form_make");//拿到Id
      $("#add").click(function(){
    	  index++;
         $form_make.append("<tr>" +
                 "<td><input class='investigationItemValue' type='text' required name=InvestigationItemsEntityList[" + index + "].investigationItemValue maxlength='12'></td> " +
          "<td><textarea class='investigationStandadard' name=InvestigationItemsEntityList[" + index + "].investigationStanddard required rows='3' cols='50'></textarea></td>" +
          +
          "</tr>");
        
      });
      
      $(function(){
    	  $("#save").click(function(e){
    		var investigationItmeName = $("#investigationItmeName").val();
    	 	var inputtext = $(".investigationItemValue");
    	 	var textareaArray = $(".investigationStandadard");
    	 	var reg = new RegExp(/["'<>%;)(&+]/);
    	 	var flag = 0;
    	 
    	 	if(reg.test(investigationItmeName)){
    	 		flag = 1;
    	 	} 
    	  	for(var i = 0 ;i<inputtext.length; i++){
    	  		var tempinputtext = inputtext[i];
    	  		var temptextarea = textareaArray[i];
    	  		if(reg.test(tempinputtext.value)||reg.test(temptextarea.value))
    	  			flag = 1;
    	  		/* inputtext[i].value=temp.value.replace(reg,''); */
    	  	}
    	  	if(flag==1){
    	  		alert("含有非法字符，请认真输入");
    	  		e.preventDefault();
    	  		return false;
    	  	}
    	  });
    	  
    	  
      });
 
</script>
</body>
</html>