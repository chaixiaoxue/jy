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
    <div class="panel-head"><strong class="icon-reorder"> 应聘信息列表</strong></div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号</th>
        <th width="10%">招聘主题</th>
        <th>姓名</th>
        <th>电话</th>
        <th>提交时间</th>
        <th>编辑</th>
      </tr>
       <c:forEach items="${comList}" var="d" varStatus="status">
        <tr>
          <td style="text-align:left; padding-left:20px;"><input type="text" name="orderNo" value="${status.index+1}" size="1px" readonly="readonly"/></td>
          <td>${d.parentId}</td>
          <td>${d.username}</td>
          <td>${d.phone }</td>
          <td><fmt:formatDate value="${d.applyTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
          
          <td>
	          <div class="button-group"> 
	          		          	<a class="button border-red" href="deleteappperson?id=${d.id}">
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