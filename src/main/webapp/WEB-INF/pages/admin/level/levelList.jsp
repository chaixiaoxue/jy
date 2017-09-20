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
    <div class="panel-head"><strong class="icon-reorder"> 等级列表</strong></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-green icon-plus-square-o" href="javaScript:void(0);" onclick="formSubmit('tocreate','_self','false');this.blur();"> 添 加</a></li>
        <li> <a class="button border-main icon-search" href="javaScript:void(0);" onclick="formSubmit('toview','_self','true');this.blur();"> 查 看</a> </li>
        <li> <a class="button border-yellow icon-edit" href="javaScript:void(0);" onclick="formSubmit('toupdate','_self','true');this.blur();"> 修 改</a> </li>
        <li> <a class="button border-red icon-trash-o" href="javaScript:void(0);" onclick="formSubmit('delete','_self','true');this.blur();"> 删 除</a> </li>
        <li> <a class="button border-main icon-refresh" href="javaScript:void(0);"    onclick="formSubmit('list','_self','false');this.blur();"> 刷  新</a> </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号</th>
        <th width="10%">等级名称</th>
        <th>等级数值</th>
        <th>创建时间</th>
        <th>修改时间</th>
        <th>编辑</th>
      </tr>
       <c:forEach items="${levelList}" var="d" varStatus="status">
        <tr>
          <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="levelId" value="${d.levelId}"/>${status.count }</td>
          <td>${d.levelName}</td>
          <td>${d.experience}</td>
          <td><fmt:formatDate value="${d.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
          <td><fmt:formatDate value="${d.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
          <td>
	          <div class="button-group"> 
		          	<a class="button border-main" href="toupdate?levelId=${d.levelId}">
		          		<span class="icon-edit"></span> 修改
		          	</a> 
		          	<a class="button border-red" href="delete?levelId=${d.levelId}">
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