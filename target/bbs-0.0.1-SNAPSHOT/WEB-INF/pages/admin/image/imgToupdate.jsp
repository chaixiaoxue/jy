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
  <div class="panel-head" id="add11"><strong><span class="icon-pencil-square-o"></span>修改图片信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" id="theAddForm"> 
    <input name="id" value="${img.id }" hidden="hidden">
      <div class="form-group">
        <div class="label">
          <label>图片:</label>
        </div>
        <div class="field">
          <img alt="" width="50%" height="auto" src="${bbs }${img.address }">
          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>是否使用:</label>
        </div>
        <div class="field">
          <input type="radio" name="iscross" <c:if test="${img.iscross==1}">checked="checked"</c:if> value="1" /><font color="red">是</font>
      	  <input type="radio" name="iscross" <c:if test="${img.iscross==0}">checked="checked"</c:if>value="0"/><font color="green">否</font>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>排序号:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="orderno" name="orderNo" value="${img.orderno }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>所属模块:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="parentId" name="parentId" readonly="readonly" value="${img.parentId }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建人:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="createBy" name="createBy" readonly="readonly" value="${img.subperson }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建时间:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="orderNo" name="createTime" readonly="readonly" value="<fmt:formatDate value='${img.subTime}' pattern="yyyy-MM-dd HH:mm:ss"/>">
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
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/img/update','_self')"> 修改</button>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>