<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <form>
                    <table id="form_make" class='table table-bordered table-hover center'>
                        <a style="display: inline-block">调查表名称</a>&nbsp&nbsp<input type="text"/>
                        <div class='col-md-12 '>
                            <tr>
                                <th>考评项目</th>
                                <th>考评标准</th>
                                <th>选项</th>
                            </tr>
                            <tr>
                                <td><input type="text"></td>
                                <td><textarea name="message" rows="3" cols="50"></textarea></td>
                                <td>
                                    <input type="radio" name="score" value="excellent">十分满意
                                    <input type="radio" name="score" value="good">一般满意
                                    <input type="radio" name="score" value="bad">不满意
                                </td>
                            </tr>
                        </div>
                    </table>
                    <input class="btn btn-info" type="button" id="add" value="增加考核内容"/>
                    <input class="btn btn-info" type="button" id="save" value="创建表格"/>
                </form>
        </div>
    </div>
<script src="../../js/jquery-1.9.1.js"></script>
<script>
      $form_make=$("#form_make");
      $("#add").click(function(){
         $form_make.append("<tr>" +
                 "<td><input type='text'></td> " +
          "<td><textarea name='message' rows='3' cols='50'></textarea></td>" +
          "<td> " +
          "<input type='radio' name='score' value='excellent'>十分满意 " +
          "<input type='radio' name='score' value='good'>一般满意 " +
          "<input type='radio' name='score' value='bad'>不满意 " +
          "</td> " +
          "</tr>");
      });

</script>
</body>
</html>