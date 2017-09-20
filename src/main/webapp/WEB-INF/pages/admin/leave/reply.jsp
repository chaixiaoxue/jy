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
  <div class="panel-head"><strong><span class="icon-key"></span> 回复留言</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" id="theAddForm">
    <input name="parentId" hidden="hidden" value="${leave.id }">
    <input name="id" hidden="hidden" value="${reply.id }">
      <div class="form-group">
        <div class="label">
          <label for="sitename">留言人姓名:</label>
        </div>
        <div class="field">	
          <input type="text" class="input w50" id="username" name="username" value="${leave.username }" readonly="readonly"/>
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
          <textarea class="input" style=" height:90px;" readonly="readonly">${leave.content }</textarea>
          <div class="tips"></div>
        </div>
      </div>  
      <div class="form-group">
        <div class="label">
          <label>回复留言内容:</label>
        </div>
        <div class="field">
          <textarea id="reporter" style="width:700px;height:300px;" name="content" <c:if test="${reply.content!=null}">readonly="readonly"</c:if>>${reply.content }</textarea>
          <div class="tips"></div>
        </div>
      </div>    
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <div class="field">
          <c:if test="${reply.content!=null}">
          
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/leave/updatereply','_self')"> 修改</button>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/leave/deletereply','_self')"> 删除回复</button>
          </c:if>
          <c:if test="${reply.content==null}">
          
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/leave/savereply','_self')"> 保存</button>
          </c:if>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>  
        </div>
      </div>      
    </form>
  </div>
</div>
</body></html>