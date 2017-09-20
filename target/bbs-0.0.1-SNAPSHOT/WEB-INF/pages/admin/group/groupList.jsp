<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../base.jsp" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, group-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${bbs }/staticfile/back/css/pintuer.css">
<link rel="stylesheet" href="${bbs }/staticfile/back/css/admin.css">
<script src="${bbs }/staticfile/back/js/jquery.js"></script>
<script src="${bbs }/staticfile/back/js/pintuer.js"></script>
</head>
<body>
<form method="post" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-green icon-plus-square-o" href="${bbs }/group/tosave"> 添 加</a> </li>
        <li> <a class="button border-green icon-plus-square-o" href="javascript:void(0)" onclick="formSubmit('${bbs}/group/toupdate','_self')"> 修改</a> </li>
        <li> <a class="button border-red icon-plus-square-o" href="javascript:void(0)" onclick="formSubmit('${bbs}/group/delete','_self')"> 删 除</a> </li>
        <li> <a class="button border-green icon-plus-square-o" href="javascript:void(0)" onclick="formSubmit('${bbs}/group/start','_self')"> 启用</a> </li>
        <li> <a class="button border-red icon-trash-o" href="javascript:void(0)" onclick="formSubmit('${bbs}/group/stop','_self')"> 停用</a> </li>
        <li> <a class="button border-main icon-refresh" href="${bbs }/group/list" target="right"> 刷  新</a> </li>
        <li style="float:right">
         <c:if test="${!empty tips}">
    		<font color="red" size="2">${tips }</font>
   		</c:if>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="formSubmit('${bbs}/group/searchUsersByKeywords','_self')" > 搜索</a></li>
      </ul>
    </div>
    <c:if test="${!empty tips}">
    		<font></font>
    </c:if>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号</th>
        <th width="10%">用户组名</th>
        <th width="10%">描述</th>
        <th width="10%">排序号</th>
        <th width="10%">状态</th>
        <th width="10%">创建时间</th>
        <th width="10%">创建人</th>
        <th width="10%">修改时间</th>
        <th width="10%">修改人</th>
        <th width="10%">操作</th>
      </tr>
      <c:forEach items="${groupList }" var="group" varStatus="status">
        <tr>
          <td style="text-align:left; padding-left:20px;">
          	 <input type="checkbox" name="groupId" value="${group.groupId}"/>
          	 ${status.count }
          </td>
          <td><a href="${bbs}/group/searchUsersByGid?groupId=${group.groupId}">${group.groupName }</a></td>
          <td>${group.remark}</td>
          <td>${group.orderNo}</td>
         <td>
			<c:if test="${group.state==1}"><a href="stop?groupId=${group.groupId}"><font color="green">启用</font></a></c:if>
			<c:if test="${group.state==0}"><a href="start?groupId=${group.groupId}"><font color="red">停用</font></a></c:if>
		 </td>
          <td><fmt:formatDate value="${group.createTime}" pattern="yyyy-MM-dd"/></td>
          <td>${group.createBy }</td>
          <td><fmt:formatDate value="${group.updateTime}" pattern="yyyy-MM-dd"/></td>
          <td>${group.updateBy }</td>
          <td>
          	<div class="button-group">
          		<a class="button border-red" href="${bbs }/group/delete?groupId=${group.groupId }">
          		<span class="icon-trash-o"></span> 删除</a> 
          	</div>
       		</td>
        </tr>
      </c:forEach>
      <tr>
        <td style="text-align:left; padding:19px 0;padding-left:20px;"><input type="checkbox" name="selid" onclick="checkAll('groupId',this)">全选 </td>
       </tr>
       <tr>
        <td colspan="4"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

//搜索
function changesearch(){	
		
}

//全选
$("#checkall").click(function(){ 
  $("input[name='groupId']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='groupId']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='groupId']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='groupId']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='groupId']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='groupId']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='groupId']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='groupId']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='groupId']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
</body>
</html>