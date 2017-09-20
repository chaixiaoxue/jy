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
  <div class="panel-head"><strong><span class="icon-key"></span> 添加新闻</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" id="theAddForm"> 
      <div class="form-group">
        <div class="label">
          <label>新闻标题:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="title" data-validate="required:新闻标题"/>
          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>新闻内容:</label>
        </div>
        <div class="field">
          <!-- <textarea class="input" name="content" style=" height:90px;"></textarea> -->
          
	            <textarea id="reporter" style="width:700px;height:300px;" name="content"></textarea>
	         
          
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">所属类型:</label>
        </div>
        <div class="field">
       		<select id="first" name="parentId">
	       		<c:forEach items="${comList }" var="ser">
		       	 	<option value="${ser.id }" selected="selected" >${ser.title}</option> 
	        	</c:forEach>
	        	
       		</select>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>排序号:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="afterSale" name="orderNo"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="clear"></div>    
      <div >
            <span style="color:red; margin-left: 130px" >${msg }</span>
       </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        
        <div class="field">
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/new/savenews','_self')"> 保存</button>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>