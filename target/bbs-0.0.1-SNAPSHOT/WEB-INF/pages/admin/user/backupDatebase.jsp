<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../../css/pintuer.css">
<link rel="stylesheet" href="../../css/admin.css">
<link rel="stylesheet" href="${bbs }/staticfile/back/css/pintuer.css">
<link rel="stylesheet" href="${bbs }/staticfile/back/css/admin.css">
<script src="${bbs }/staticfile/back/js/jquery-1.8.3.js"></script>
<script src="${bbs }/staticfile/back/js/pintuer.js"></script>
<script src="${bbs }/staticfile/back/js/common.js"></script>
</head>
<body>
<%@ include file="./head.jsp" %>
<form method="post" class="form-x" action=""> 
<table cellpadding="2" cellspacing="1" border="0" width="95%" align="center" class="table_southidc">
  <tr> 
    <td class="back_southidc" colspan="2" height="25" align="center"><b>备份数据库</b></td>
  </tr>
  <tr> 
    <td class="back_southidc" colspan="2" height="25" align="center"><b>备份企业网站管理系统数据文件[需要FSO权限]</b></td>
  </tr>
  <tr > 
    <td width="50%" height="23" colspan="2" align="center">备份数据库名称[如备份目录有该文件，将覆盖，如没有，将自动创建]</td>
  </tr>
  <tr> 
    <!-- <td width="50%" height="23" colspan="2" align="center"><input type="text" style="width:200px;height:40px;" class="input w50"  name="dataname" data-validate="required:请输入要备份的数据库名称" /></td> -->
       <td width="50%" height="23" colspan="2" align="center">
       		 <b>请输入数据库名称</b>
      </td>
  </tr>
  
  <tr>
  		
  		<td width="50%" height="23" colspan="2" align="center" ><input name="dataName" style="width:200px;height:40px;" onblur="checkNull('dataName', '数据库名字不能为空')"/>
  		
  		<span style="color:red;" id="dataName_msg"></span>
  		</td>
  </tr>
  
 <tr > 
    <td width="50%" height="23" colspan="2" align="center">用户须知</td>
  </tr>
  <tr>
      	
      	<td width="50%" height="23" colspan="2" align="center"><textarea name="remark" style="width:520px;height:160px;" readonly="readonly">                       您可以用这个功能来备份您的法规数据，以保证您的数据安全！
                              注意：所有路径都是相对与程序空间根目录的相对路径</textarea></td>
  </tr>
  <tr>
  	<td align="center">
  	<button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/user/dataBase','_self')">备份</button>
   	</td>
   	<td align="center">
    <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
  	</td>
  </tr>
  <tr>
  	<td width="50%" height="23" colspan="2" align="center"><span style="color:red; margin-center: 130px" ><font size="5px">${msg }</font></span></td>
  </tr>
</table>
</form>
<br>
<br>
<script type="text/javascript">
function checkNull(name, msg){
	var value = document.getElementsByName(name)[0].value;
	setMsg(name, "");
	if(value == ""){
		setMsg(name, msg);
		return false;
	}
	return true;
}

function setMsg(name, msg){
	document.getElementById(name+"_msg").innerHTML = msg;
}
</script>
</body>
</html>