<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">

<title>版块查看</title>

<link rel="stylesheet" href="../../back/css/pintuer.css">
<link rel="stylesheet" href="../../back/css/admin.css">
<script src="../../back/js/jquery.js"></script>
<script src="../../back/js/pintuer.js"></script>
<script src="../../back/js/common.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>版主面板</strong></div>
  <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-yellow icon-edit" href="#" onclick="window.history.go(-1)"> 返 回</a> </li>
        <li> <a class="button border-main icon-refresh" href="#" onclick="formSubmit('toupdate','_self','0');this.blur();"> 修 改</a> </li>
      </ul>
    </div>
  <div class="body-content">
    <form method="post" class="form-x" action=""> 
   		<input type="hidden" name="sectionId" value="${section.sectionId }" > 
      <div class="form-group">
        <div class="label">
          <label>版块名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${section.sectionName }" readonly="readonly" name="sectionName" data-validate="required:请输入版块名称" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>排序号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${section.orderNo }" readonly="readonly" name="orderNo" data-validate="required:请输入排序号" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建时间：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="<fmt:formatDate value="${section.createTime }" pattern="yyyy-MM-dd"/>" readonly="readonly" name="createTime" data-validate="required:" />
          <div class="tips"></div>
        </div>
      </div>
      
    </form>
  </div>
</div>

</body></html>