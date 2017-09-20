<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../base.jsp" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${bbs }/staticfile/back/css/pintuer.css">
<link rel="stylesheet" href="${bbs }/staticfile/back/css/admin.css">
<script src="${bbs }/staticfile/back/js/jquery.js"></script>
<script src="${bbs }/staticfile/back/js/pintuer.js"></script>
</head>
<body>
<form method="post" id="listform">
  <div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-green icon-plus-square-o" href="javascript:void(0)" onclick="formSubmit('${bbs}/group/update','_self')"> 保存</a> </li>
        <li> <a class="button border-main icon-refresh+" href="javascript:void(0)" onclick="window.history.go(-1)"> 返回</a> </li>
      </ul>
    </div>
    
    <table class="table table-hover text-center">
      <tr>
      	<input type="hidden" name="groupId" value="${group.groupId}"/>
      	<td>用户组名</td>
      	<td><input name="groupName" type="text" value="${group.groupName }"/></td>
      </tr>
      <tr>
      	<td>排序号</td>
      	<td><input name="orderNo" type="text" value="${group.orderNo }"/></td>
      </tr>
      <tr>
      <td>状态</td>
      <td>
      	<input type="radio" ${group.state==0?"checked='checked'":""}/><font color="red">停用</font>
      	<input type="radio" ${group.state==1?"checked='checked'":"" }/><font color="green">启用</font>
      </td>
      </tr>
      <tr>
      	<td>用户组描述</td>
      	<td><textarea name="remark" style="width:520px;height:160px;" >${group.remark }</textarea></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>