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
    <div class="container" style="margin-left: 20px;margin-top: 20px;">
        <div class="row">
            <h2 style="display: inline-block">表格管理</h2>
            <a>考评表制作</a>
                <form id="submitTable" action="/investigationItem" method="post" >
                    <table id="form_make" class='table table-bordered table-hover center'>
                        <a style="display: inline-block">调查表名称</a>&nbsp&nbsp<input id="investigationItmeName" type="text" required name="investigationItmeName"/>
              
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
<!-- <script src="../../js/jquery-1.9.1.js"></script> -->
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
      
      
    /*   $(function(){
    	  $("#save").click(function(e){
		  if($("#investigationItmeName").val==""||$("#investigationItmeName").val==null){
			  alert("调查表名称不能为空(～￣▽￣)～");
			  e.preventDefault();
				return false;
		  };
   		  $.each($(".investigationItemValue"),function(){
    			  if($(this).val()==""||(this).val==null){
    				  alert("考评项目不能为空(๑•ᴗ•๑)");
    				  e.preventDefault();
      					return false;
    				  };
    		  });
    		  $.each($(".investigationStandadard"),function(){
    			  if($(this).val()==""||(this).val==null){
    				  alert("考评标准不为空(￣┰￣*)"");
    				  e.preventDefault();
      					return false;
    				  };
    		  });
    	  });
      }); */
      
      
      
      function checkCorrect(){
    	  var form=document.getElementById("form_make");
    	  var inputArray=form.getElementsByClassName("investigationItemValue");
    	  var inputArrayLength=inputArray.length;
    	  for(var i=0;i<inputArray;i++){
    	/*  console.log(); */
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