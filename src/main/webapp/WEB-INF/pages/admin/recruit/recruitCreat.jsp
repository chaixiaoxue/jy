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
  <div class="panel-head" id="add11"><strong><span class="icon-pencil-square-o"></span>查看招聘信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" id="theAddForm">
     
      <div class="form-group">
        <div class="label">
          <label>招聘主题:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="title"  data-validate="required:招聘主题"/>
          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>招聘对象:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="recruiting" name="recruiting"  />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>招聘人数:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="num" name="num" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>薪酬:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="money" name="money"  />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>招聘要求:</label>
        </div>
        <div class="field">
          <textarea id="reporter" style="width:700px;height:300px;" name="content"></textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>招聘期限:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="requireddate" name="requireddate" />
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
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/recruit/save','_self')"> 保存</button>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>