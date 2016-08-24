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
	<script src="/assets/js/bootstrap.js"></script>
</head>
<body>
    <div class="container" style="margin-left: 20px;margin-top: 20px;">
        <div class="row">
            <h2 style="display: inline-block">表格管理</h2>
            <a>考评表制作</a>
                <form action="/investigationItem" method="post">
                    <table id="form_make" class='table table-bordered table-hover center'>
                        <a style="display: inline-block">调查表名称</a>&nbsp&nbsp<input type="text" name="investigationItmeName"/>
                       
                            <tr>
                                <th>考评项目</th>
                                <th>考评标准</th>
                            </tr>
                            <tr>
                                <td><input type="text" name="InvestigationItemsEntityList[0].investigationItemValue"></td>
                                <td><textarea name="InvestigationItemsEntityList[0].investigationStanddard" rows="3" cols="50"></textarea></td>
                            </tr>
                    </table>
                    <input class="btn btn-info" type="button" id="add" value="增加考核内容"/>
                    <input class="btn btn-info" type="submit" id="save" value="创建表格"/>
                </form>
        </div>
    </div>
<script src="../../js/jquery-1.9.1.js"></script>
<script>
		var index=0;
      $form_make=$("#form_make");
      $("#add").click(function(){
    	  index++;
         $form_make.append("<tr>" +
                 "<td><input type='text'name=InvestigationItemsEntityList[" + index + "].investigationItemValue></td> " +
          "<td><textarea name=InvestigationItemsEntityList[" + index + "].investigationStanddard rows='3' cols='50'></textarea></td>" +
          +
          "</tr>");
        
      });

</script>
</body>
</html>