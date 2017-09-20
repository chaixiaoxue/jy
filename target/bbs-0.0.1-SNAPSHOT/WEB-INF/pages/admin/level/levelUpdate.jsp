<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${bbs}/staticfile/back/css/pintuer.css">
<link rel="stylesheet" href="${bbs}/staticfile/back/css/admin.css">
<script src="${bbs}/staticfile/back/js/jquery.js"></script>
<script src="${bbs}/staticfile/back/js/pintuer.js"></script>
<script src="${bbs}/staticfile/back/js/common.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">新增等级</strong></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
      	<li><a class="button border-green icon-plus-square-o" href="javaScript:void(0);" onclick="formSubmit('update','_self','false');this.blur();"> 更新</a> </li>
      	<li><a class="button border-green icon-plus-square-o" href="javaScript:void(0);" onclick="window.history.go(-1);this.blur();"> 返回</a> </li>
	  </ul>
    </div>
  </div>
  
  <div style="padding:20px">
  		<div style="display:block">
	        <div class="label">
	          	<label>等级序号：</label>
	        </div>
	        <div class="field">
	          	<input type="text" class="input w50" name="levelId" value="${level.levelId}" readonly="readonly"/>
	          	<div class="tips"></div>
	        </div>
	     </div>
	     <div style="clear:both"></div>
	   	<div style="display:block">
	        <div class="label">
	          	<label>等级名称：</label>
	        </div>
	        <div class="field">
	          	<input type="text" class="input w50" name="levelName" value="${level.levelName}" />
	          	<div class="tips"></div>
	        </div>
	     </div>
	     <div style="clear:both"></div>
	     <div style="display:block">
	        <div class="label">
	          	<label>等级数值：</label>
	        </div>
	        <div class="field">
	          	<input type="text" class="input w50" name="experience" value="${level.experience}"  />
	          	<div class="tips"></div>
	        </div>
	     </div>
   </div>
   
</form>
</body>
</html>