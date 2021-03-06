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
  <div class="panel-head" id="add11"><strong><span class="icon-pencil-square-o"></span>查看新闻详细信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action=""> 
      <div class="form-group">
        <div class="label">
          <label>新闻标题:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="title" readonly="readonly" data-validate="required:栏目名称"/ value="${part.title }">
          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>新闻内容:</label>
        </div>
        <div class="field">
          <textarea class="input" name="content" style=" height:90px;"  readonly="readonly" >${part.content}</textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>排序号:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="orderNo" name="orderNo" readonly="readonly"/ value="${part.orderNo }">
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>所属新闻类别:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="orderNo" name="parentId" readonly="readonly" value="${part.parentId }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建人:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="orderNo" name="orderNo" readonly="readonly" value="${part.createBy }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建时间:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="orderNo" name="orderNo" readonly="readonly" value="<fmt:formatDate value='${part.createTime}' pattern="yyyy-MM-dd HH:mm:ss"/>">
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
          <%-- <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/company/save','_self')"> 保存</button> --%>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>