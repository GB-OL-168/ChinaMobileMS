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
           <form id="submitTable" action="/investigationItem" method="post" >
               <table id="form_make" class='table table-bordered table-hover center'>
               	   <div style="margin-left:350px;">
   		             	<a style="display: inline-block">调查表名称</a>
               			&nbsp&nbsp<input id="investigationItmeName" type="text" required name="investigationItmeName"/>
               	   </div>
                   <tr>
                       <th>考评项目</th>
                       <th>考评标准</th>
                   </tr>
                   <tr>
                       <td><input class="investigationItemValue" type="text" required name="InvestigationItemsEntityList[0].investigationItemValue"></td>
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
                 "<td><input class='investigationItemValue' type='text' required name=InvestigationItemsEntityList[" + index + "].investigationItemValue></td> " +
          "<td><textarea class='investigationStandadard' name=InvestigationItemsEntityList[" + index + "].investigationStanddard required rows='3' cols='50'></textarea></td>" +
          +
          "</tr>");
        
      });
      
 
      
      function checkCorrect(){
    	  var form=document.getElementById("form_make");
    	  var inputArray=form.getElementsByClassName("investigationItemValue");
    	  var inputArrayLength=inputArray.length;
    	  for(var i=0;i<inputArray;i++){
    		  if(inputArray[i].value==""||inputArray[i]==null){
    			  alert("不能为空！");
    		  }
    		  return false;
    	  }
    	  return true;
      }
 
</script>
</body>
</html>