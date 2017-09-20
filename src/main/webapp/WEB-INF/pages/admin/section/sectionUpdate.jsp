<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<script src="${bbs }/staticfile/back/js/jquery-1.8.3.js"></script>
<script src="${bbs }/staticfile/back/js/pintuer.js"></script>
<script src="${bbs }/staticfile/back/js/common.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add11"><strong><span class="icon-pencil-square-o"></span>管理员面板</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action=""> 
   		<input type="hidden" name="sectionId" value="${section.sectionId }"> 
      <div class="form-group">
        <div class="label">
          <label>版块名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="sectionName" data-validate="required:请输入标题" value="${section.sectionName }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>版主：</label>
        </div>
        <div class="field">
       		<select id="first" name="managerIds" multiple="multiple" size="10" >
	       		<c:forEach items="${section.managerList }" var="manager">
		       	 	<option value="${manager.userId }" selected="selected" >${manager.username}</option> 
	        	</c:forEach>
	        	<c:forEach items="${userList }" var="user" >
	        		<option value="${user.userId }">${user.username}</option>
	        	</c:forEach>
       		</select>
          <div class="tips">${tips}</div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>板块描述：</label>
        </div>
        <div class="field">
          <textarea class="input" name="remark" style=" height:90px;">${section.remark }</textarea>
          <div class="tips"></div>
        </div>
      </div>
     
      <div class="clear"></div>
      <div class="form-group">
        <div class="label">
          <label>状态：</label>
        </div>
        <div class="field">
          <input type="radio" name="state" ${section.state==0?"checked='checked'":""} value="0"/><font color="red">停用</font>
      	  <input type="radio" name="state" ${section.state==1?"checked='checked'":"" } value="1"/><font color="green">启用</font>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>排序号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="orderNo" value="${section.orderNo }"  data-validate="number:排序必须为数字" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/section/update','_self')"> 更新</button>
          <div class="tips"></div>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>