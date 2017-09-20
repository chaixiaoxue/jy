<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../../../base.jsp" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${bbs}/staticfile/back/css/pintuer.css">
<link rel="stylesheet" href="${bbs}/staticfile/back/css/admin.css">
<script src="${bbs}/staticfile/back/js/jquery.js"></script>
<script src="${bbs}/staticfile/back/js/pintuer.js"></script>
<script src="${bbs}/staticfile/back/js/common.js"></script>

</head>
<body>
<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">图片列表</strong></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
     	<li> <a class="button border-main icon-refresh" href="#" onclick="formSubmit('list','_self');this.blur();"> 刷  新</a> </li>
        <li style="float:right">
          <select id="first" name="parentId" style="height:40px">
	       		<c:forEach items="${serList }" var="ser">
		       	 	<option value="${ser.id }">${ser.title}</option> 
	        	</c:forEach>
	        	
       		</select>
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="formSubmit('imgListToview','_self');this.blur();" > 查找</a></li>
      </ul>
    </div>
    
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号</th>
        <th width="10%">所属栏目名称</th>
        <th>图片缩略图</th>
        <th>是否使用</th>
        <th>创建时间</th>
        <th>编辑</th>
      </tr>
       <c:forEach items="${comList}" var="d" varStatus="status">
        <tr>
          <td style="text-align:left; padding-left:20px;"><input type="text" name="orderNo" value="${status.index+1}" size="1px" readonly="readonly"/></td>
          <td>${d.parentId}</td>
          <td><img alt="" width="100px" height="100px" src="${bbs }${d.address }"></td>
          <td>
          	<input type="radio" name="sex" <c:if test="${d.iscross==1}">checked="checked"</c:if> value="1" readonly="readonly"/><font color="red">是</font>
      	  <input type="radio" name="sex" <c:if test="${d.iscross==0}">checked="checked"</c:if>value="0" readonly="readonly"/><font color="green">否</font>
          </td>
          <td><fmt:formatDate value="${d.subTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
          <td>
	          <div class="button-group">
		          	<a class="button border-main" href="toupdate?id=${d.id}">
		          		<span class="icon-edit"></span> 修改
		          	</a> 
		          	<a class="button border-red" href="delete?id=${d.id}">
		          		<span class="icon-trash-o"></span> 删除
		          	</a> 
		          	
	          </div>
          </td>
        </tr>
        </c:forEach>
    </table>
  </div>
</form>
</body>
</html>