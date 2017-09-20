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
<script src="${bbs }/staticfile/back/js/handlers.js"></script>
<script src="${bbs }/staticfile/back/js/swfupload.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add11"><strong><span class="icon-pencil-square-o"></span>上传图片</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" id="theAddForm" enctype="multipart/form-data"> 
      <div class="form-group">
        <div class="label">
          <label>所属板块：</label>
        </div>
        <div class="field">
       		<select id="first" name="parentId">
	       		<c:forEach items="${serList }" var="ser">
		       	 	<option value="${ser.id }" selected="selected" >${ser.title}</option> 
	        	</c:forEach>
	        	
       		</select>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>选择图片：</label>
        </div>
        <div class="field">
          <input type="file" id="url1" name="img" class="input " style="width:25%; float:left;"  value="" data-place="right" data-image="" />
          <div class="tipss">图片尺寸：1920*460</div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>排序号:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="afterSale" name="orderno"/>
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
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/img/save','_self')"> 保存</button>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>