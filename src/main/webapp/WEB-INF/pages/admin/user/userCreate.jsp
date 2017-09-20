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
      <div class="form-group">
        <div class="label">
          <label>用户名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="username" data-validate="required:请输入用户名" value="${username }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>密码：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="password" data-validate="required:请输入密码" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建人：</label>
        </div>
        <div class="field">
          <input readonly="readonly" type="text" class="input w50"  name="createBy" data-validate="required:请输入创建人" value="${userSession.username }" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="clear"></div>
      <div class="form-group">
        <div class="label">
          <label>用户身份：</label>
        </div>
        <div class="field">
          <input type="radio" name="role" value="0"/><font color="red">普通用用户</font>
      	  <input type="radio" name="role" value="1"/><font color="green">管理员</font>
          <div class="tips"></div>
        </div>
      </div>
      
      <div >
            <span style="color:red; margin-left: 130px" >${msg }</span>
       </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        
        <div class="field">
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/user/save','_self')"> 保存</button>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>