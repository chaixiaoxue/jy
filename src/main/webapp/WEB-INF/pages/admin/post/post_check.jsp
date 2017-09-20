<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../../base.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<title></title>
<link rel="stylesheet" href="${bbs}/staticfile/back/css/pintuer.css">
<link rel="stylesheet" href="${bbs}/staticfile/back/css/admin.css">
<script src="${bbs}/staticfile/back/js/jquery.js"></script>
<script src="${bbs}/staticfile/back/js/pintuer.js"></script>
</head>
<body>
<form method="post"  id="listform">
  <div class="panel admin-panel" >
    <div class="panel-head" ><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
     	<li> <a class="button border-main icon-refresh" href="#" onclick="formSubmit('list','_self');this.blur();"> 刷  新</a> </li>
        <li style="float:right">
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="formSubmit('findMore','_self');this.blur();" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号</th>
        <th width="10%">帖子名称</th>
        <th>发帖用户</th>
        <th>所属板块</th>
        <th>是否通过</th>
        <th>是否是精华贴</th>
        <th>是否置顶</th>
        <th>排序号</th>
        <th width="10%">创建时间</th>
        <th width="10%">更改时间</th>
        <th width="10%">通过时间</th>
        <th width="310">操作</th>
      </tr>
      <volist name="list" id="vo">
        <tr>
		<c:forEach items="${postList}" var="p" varStatus="status">
		<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
			<td style="text-align:left; padding-left:20px;">
				<input type="checkbox" name="postId" value="${p.postId}"/>${status.index+1}
			</td>
			<td><a href="${bbs}/post/toview?postId=${p.postId}" onclick="">${p.postName}</a></td>
			<td>${p.user.nickname}</td>
			<td>${p.section.sectionName}</td>
			<td>
				<c:if test="${p.state==1}"><font color="green">通过</font></a></c:if>
				<c:if test="${p.state==0}"><font color="red">未通过</font></a></c:if>
			</td>
			<td>
				<c:if test="${p.cream==1}"><font color="green">精华帖</font></a></c:if>
				<c:if test="${p.cream==0}"><font color="red">普通帖</font></a></c:if>
			</td>
			<td>
				<c:if test="${p.top==1}"><font color="green">置顶</font></a></c:if>
				<c:if test="${p.top==0}"><font color="red">未置顶</font></a></c:if>
			</td>
			<td>${p.orderNo}</td>
			<td>
				<fmt:formatDate value="${p.createTime}" pattern="yyyy-MM-dd"/>
			</td>
			<td>
				<fmt:formatDate  value="${p.updateTime}" pattern="yyyy-MM-dd"/>
			</td>
			<td>
				<fmt:formatDate  value="${p.passedTime}" pattern="yyyy-MM-dd"/>
			</td>
			<td>
				<div class="button-group">
					<a class="button border-main" href="${bbs}/post/toupdate?postId=${p.postId}"><span class="icon-edit"></span>审核</a>
					<a class="button border-red" href="${bbs}/post/delete?postId=${p.postId}"><span class="icon-trash-o"></span> 删除</a> 
				</div>
			</td>
		</tr>
		</c:forEach>
          
      <tr>
        <td style="text-align:left; padding:19px 0;padding-left:20px;"><input type="checkbox" id="checkall" onclick="checkAll('postId',this)"/>全选 </td>
        <td colspan="12" style="text-align:left;padding-left:20px;"><a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding:5px 15px;" onclick="formSubmit('delete','_self');this.blur();"> 批量删除</a> 操作：
          
          <select name="iscream" style="padding:5px 15px; border:1px solid #ddd;" onchange="changeaddcream(this)">
            <option value="">加精</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          <select name="istop" style="padding:5px 15px; border:1px solid #ddd;" onchange="changeaddtop(this)">
            <option value="">置顶</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          
          	所属板块：
          <select name="sectionId" style="padding:5px 15px; border:1px solid #ddd;" onchange="changesection(this)">
            <option value="">请选择所属板块</option>
			<c:forEach items="${sectionList}" var="s">
				<option value="${s.sectionId}" >${s.sectionName}</option>
			</c:forEach>           
          </select>
      </tr>
      <tr>
        <td colspan="12"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">


function changesearch(){	
	
}

//批量加精
function changeaddcream(o){
	var Checkbox=false;
	 $("input[name='postId']").each(function(){
	  if (this.checked==true) {	
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		formSubmit('addcream','_self');		
	}else{
		alert("请选择要操作的内容!");
		history.go(0);
	}
}
//批量置顶
function changeaddtop(o){
	var Checkbox=false;
	 $("input[name='postId']").each(function(){
	  if (this.checked==true) {	
		  Checkbox=true;
	  }
	});
	if (Checkbox){
		formSubmit('addtop','_self');		
	}else{
		alert("请选择要操作的内容!");
		history.go(0);
	}
}


//批量更改版块
function changesection(o){
	var Checkbox=false;
	 $("input[name='postId']").each(function(){
	  if (this.checked==true) {	
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		formSubmit('isSection','_self');	
	}else{
		alert("请选择要操作的内容!");
		history.go(0);
	}
}
</script>
</body>
</html>