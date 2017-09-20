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
  <div class="panel-head"><strong><span class="icon-key"></span> 网站配置</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">
    <input type="hidden" name="id" value="${web_Set.id}"/>
      <div class="form-group">
        <div class="label">
          <label for="sitename">网址标题:</label>
        </div>
        <div class="field">
        	
          <label style="line-height:33px;" >
          ${web_Set.title }
          </label>
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">网站描述：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="description" name="description"  value="${web_Set.description }"/>       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">网站地址：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="webAddress" name="webAddress"  value="${web_Set.webAddress }" readonly="readonly"/>       
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">公司地址：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="comAddress" name="comAddress"  value="${web_Set.comAddress }"/>       
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">公司电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="phone" name="phone"  value="${web_Set.phone }"/>       
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label for="sitename">公司邮箱：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="email" name="email"  value="${web_Set.email }"/>       
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">版权信息：</label>
        </div>
        <div class="field">
          <input type="text" class="input w55" id="copyrightInformation" name="copyrightInformation"  value="${web_Set.copyrightInformation }"/>       
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label for="sitename">公司传真：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="fax" name="fax"  value="${web_Set.fax }"/>       
        </div>
      </div>   
      <div class="form-group">
        <div class="label">
          <label for="sitename">售后电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="afterSale" name="afterSale"  value="${web_Set.afterSale }"/>       
        </div>
      </div>   
      <div class="form-group">
        <div class="label">
          <label for="sitename">客服qq：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="qq1" name="qq1"  value="${web_Set.qq1 }"/>       
			<input type="text" class="input w50" id="qq2" name="qq2"  value="${web_Set.qq2 }"/>  
			<input type="text" class="input w50" id="qq3" name="qq3"  value="${web_Set.qq3 }"/>
			<input type="text" class="input w50" id="qq4" name="qq4"  value="${web_Set.qq4 }"/>     
        	
        </div>
      </div>           
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <div class="field">
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/user/updatewebset','_self')"> 保存</button>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>  
        </div>
      </div>      
    </form>
  </div>
</div>
</body></html>