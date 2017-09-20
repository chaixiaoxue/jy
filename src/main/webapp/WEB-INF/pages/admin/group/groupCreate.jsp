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
        <li> <a class="button border-green icon-plus-square-o" href="javascript:void(0)" onclick="formSubmit('${bbs}/group/save','_self')"> 保存</a> </li>
        <li> <a class="button border-main icon-refresh+" href="javascript:void(0)" onclick="window.history.go(-1)"> 返回</a> </li>
      </ul>
    </div>
    
    <table class="table table-hover text-center">
      <tr>
      	<td>用户组名</td>
      	<td><input name="groupName" type="text"/></td>
      </tr>
      <tr>
      	<td>排序号</td>
      	<td><input name="orderNo" type="text"/></td>
      </tr>
      <tr>
      	<td>用户组描述</td>
      	<td><textarea name="remark" style="width:520px;height:160px;" ></textarea></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>