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
  <div class="panel-head"><strong><span class="icon-key"></span> 添加人才</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" id="theAddForm">
    <input name="id" hidden="hidden" value="${cv.id }">
      <div class="form-group">
        <div class="label">
          <label for="sitename">姓名:</label>
        </div>
        <div class="field">
        	
          <input type="text" class="input w50" id="name" name="name" value="${cv.name }"/>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>性别:</label>
        </div>
        <div class="field">
          <input type="radio" name="sex" <c:if test="${cv.sex==0}">checked="checked"</c:if> value="0"/><font color="red">男</font>
      	  <input type="radio" name="sex" <c:if test="${cv.sex==1}">checked="checked"</c:if>value="1"/><font color="green">女</font>
          <div class="tips"></div>
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">年龄:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="age" name="age" value="${cv.age }" />       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">意向行业:</label>
        </div>
        <div class="field">
       		<select id="first" name="industry">
       			<option value="${cv.industry }">
	       		<c:forEach items="${comList }" var="ser">
		       	 	<option value="${ser.id }" selected="selected" >${ser.title}</option> 
	        	</c:forEach>
	        	
       		</select>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">意向职位:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="position" name="position" value="${cv.position }" />       
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">期望薪资:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="money" name="money" value="${cv.money }"/>       
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label for="sitename">联系方式:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="phone" name="phone" value="${cv.phone }"/>       
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label for="sitename">QQ:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="qq" name="qq" value="${cv.qq }"/>       
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label for="sitename">邮箱:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="email" name="email" value="${cv.email }"/>       
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label for="sitename">地址:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="address" name="address" value="${cv.address }" />       
        </div>
      </div>   
      <div class="form-group">
        <div class="label">
          <label>工作经历:</label>
        </div>
        <div class="field">
          <%-- <textarea class="input" name="workingexperience" style=" height:90px;">${cv.workingexperience }</textarea> --%>
          <textarea id="reporter" style="width:700px;height:300px;" name="workingexperience">${cv.workingexperience }</textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>教育培训经历:</label>
        </div>
        <div class="field">
          <%-- <textarea class="input" name="educationexperience" style=" height:90px;">${cv.educationexperience }</textarea> --%>
          <textarea id="reporter" style="width:700px;height:300px;" name="educationexperience">${cv.educationexperience }</textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>技能特长与自我评价:</label>
        </div>
        <div class="field">
          <%-- <textarea class="input" name="skillsexpertise" style=" height:90px;">${cv.skillsexpertise }</textarea> --%>
          <textarea id="reporter" style="width:700px;height:300px;" name="skillsexpertise">${cv.skillsexpertise }</textarea>
          <div class="tips"></div>
        </div>
      </div>         
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <div class="field">
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="formSubmit('${bbs}/talent/updateCv','_self')"> 保存</button>
          <button id="update_btn" class="button bg-main icon-check-square-o" type="button" onclick="window.history.go(-1);this.blur();">返回</button>
         
        
          <div class="tips"></div>  
        </div>
      </div>      
    </form>
  </div>
</div>
</body></html>