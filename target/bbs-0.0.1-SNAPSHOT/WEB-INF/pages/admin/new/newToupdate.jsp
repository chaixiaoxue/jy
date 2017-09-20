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
  <div class="panel-head" id="add11"><strong><span class="icon-pencil-square-o"></span>修改新闻类别信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" id="theAddForm"> 
    <input name="id" value="${part.id }" hidden="hidden">
      <div class="form-group">
        <div class="label">
          <label>类别名称:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="title" data-validate="required:类别名称" value="${part.title }"/>
          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>描述:</label>
        </div>
        <div class="field">
          <%-- <textarea class="input" name="content" style=" height:90px;"   >${part.content}</textarea> --%>
          <textarea id="reporter" style="width:700px;height:300px;" name="content">${part.content}</textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>排序号:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="orderNo" name="orderNo" value="${part.orderNo }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>所属模块:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="parentId" name="parentId" readonly="readonly" value="新闻管理"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建人:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="createBy" name="createBy" readonly="readonly" value="${part.createBy }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建时间:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="orderNo" name="createTime" readonly="createTime" value="<fmt:formatDate value='${part.createTime}' pattern="yyyy-MM-dd HH:mm:ss"/>">
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
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/new/update','_self')"> 修改</button>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>