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
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 留言 详细信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">
    <input name="id" hidden="hidden" value="${leave.id }">
      <div class="form-group">
        <div class="label">
          <label for="sitename">姓名:</label>
        </div>
        <div class="field">
        	
          <input type="text" class="input w50" id="username" name="username" value="${leave.username }" readonly="readonly"/>
        </div>
      </div>  
      <div class="form-group">
        <div class="label">
          <label for="sitename">电话:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="phone" name="phone" value="${leave.phone }" readonly="readonly" />       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">QQ:</label>
        </div>
        <div class="field">
        	<input type="text" class="input w50" id="qq" name="qq" value="${leave.qq }" readonly="readonly" />
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">邮箱:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="email" name="email" value="${leave.email }" readonly="readonly"/>       
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">地址:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="address" name="address" value="${leave.address }" readonly="readonly"/>       
        </div>
      </div>  
      <div class="form-group">
        <div class="label">
          <label for="sitename">主题:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="subject" name="subject" value="${leave.subject }" readonly="readonly"/>       
        </div>
      </div>        
       
      <div class="form-group">
        <div class="label">
          <label>留言内容:</label>
        </div>
        <div class="field">
          <textarea class="input" name="content" style=" height:90px;" readonly="readonly">${leave.content }</textarea>
          <div class="tips"></div>
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <div class="field">
          
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>  
        </div>
      </div>      
    </form>
  </div>
</div>
</body></html>