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

<title>版块管理</title>

<link rel="stylesheet" href="${bbs }/staticfile/back/css/pintuer.css">
<link rel="stylesheet" href="${bbs }/staticfile/back/css/admin.css">

<script src="${bbs }/staticfile/back/js/jquery.js"></script>
<script src="${bbs }/staticfile/back/js/pintuer.js"></script>
<script src="${bbs }/staticfile/back/js/common.js"></script>
<script type="text/javascript">
	$(function(){
		/* function 
		 $.ajax({
				type:'POST',
				url:url+'user/login.do',
				data:{username:$('#username').val(),password:$("#password").val()},
				dataType:'json',
				success:function(data){
					var newdata =eval(data);
					window.console.log(newdata);
					if (newdata.state == "true"){
						window.location.href="/hms/pages/html/index.html";
					}else{
						alert("您的用户名或密码不正确");
						window.location.href="denglu.html";
					}
				}
			}); */ 

		 //1.页面加载之后，找到文本框的内容对它触发一个事件
		  $("#section_name").hover(function ()
		 {
		 
		  //2.获取到文本框的内容,注意去空格
		  var title = $.trim($("#section_name").val());
		  //3.获取到输入的内容之后，就要通过ajax传给后台
		  
		  /*  $.ajax({
				type:'POST',
				url:'/admin/section/ajax',
				data:{ "title": title },
				dataType:'json',
				success:function(data){
					
					alert(data);
				}
			}); */
		  
		  $.post("/admin/section/ajax", { "title": title }, function (data){
			
		    if (title == "") {
		    $("#user_check").hide();
		   }
		   else
		   {
		    //显示展示div,把它清空
		    $("#user_check").show().html("");
		    if (data == "") {
		     $("#user_check").text("没有相关数据!");
		    }
		    else {
		     $("#user_check ").append(data);
		    } 
		   } 
		  });
		 });  
	})
	function page(pageNum) {
	    $("#paging").load("${bbs}/section/list?pageNum=" + pageNum);
	}

</script>
</head>
<body>
<form method="post" action="" id="listform">
  <div class="panel admin-panel" id="paging">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-green icon-plus-square-o" onclick="formSubmit('tocreate','_self');this.blur();"> 添 加</a> </li>
        <li> <a class="button border-yellow icon-edit" onclick="formSubmit('toupdate','_self');this.blur();"> 修 改</a> </li>
        <li> <a class="button border-red icon-trash-o" onclick="formSubmit('delete','_self');this.blur();"> 删 除</a> </li>
        <li> <a class="button border-green icon-plus-square-o" href="javascript:void(0)" onclick="formSubmit('${bbs}/section/start','_self')"> 启用</a> </li>
        <li> <a class="button border-red icon-trash-o" href="javascript:void(0)" onclick="formSubmit('${bbs}/section/stop','_self')"> 停用</a> </li>
        <li> <a class="button border-main icon-refresh" href="${bbs }/section/list"> 刷  新</a> </li>
        <li style="float:right">
          <input type="text" placeholder="请输入搜索关键字" id="section_name" name="sectionName"  class="input" style="width:250px; line-height:17px;display:inline-block" />
          <span id="user_check"></span>
          <a class="button border-main icon-search" onclick="formSubmit('search','_self','0');this.blur();" > 搜索</a></li>
          
      </ul>
    </div>
    <table id="ec_table" class="table table-hover text-center">
      <tr>
        <th width="10%"><input type="checkbox" id="checkall" onclick="checkAll('sectionId',this)"/>序号 </th>
        <th width="10%">版块名称</th>
        <th width="20%">版块描述</th>
        <th width="20%">版主</th>
        <th width="10%">创建时间</th>
        <th width="10%">修改时间</th>
        <th width="10%">状态</th>
        <th width="210">操作</th>
      </tr>
      <c:forEach var="section" items="${sectionList}" varStatus="status">
	        <tr>
	          <td style="text-align:center; ">
	          	<input type="checkbox" name="sectionId" value="${section.sectionId }" />
	           ${status.count }
	           </td>
	          <td><a href="${bbs }/post/findPostsBySectionId?sectionId=${section.sectionId}" >${section.sectionName }</a></td>
	          <td>${section.remark}</td>
	          <td>
	          <c:forEach items="${section.managerList }" var="user" varStatus="status">
	          		${user.username}
	          		<c:if test="${!status.last}">,</c:if>
	          </c:forEach>
	         </td>
	          <td><fmt:formatDate value="${section.createTime }" pattern="yyyy-MM-dd"/></td>
	          <td><fmt:formatDate value="${section.updateTime }" pattern="yyyy-MM-dd"/></td>
	          <td>
				<c:if test="${section.state==1}"><a href="${bbs }/section/stop?sectionId=${section.sectionId}"><font color="green">启用</font></a></c:if>
				<c:if test="${section.state==0}"><a href="${bbs }/section/start?sectionId=${section.sectionId}"><font color="red">停用</font></a></c:if>
			 </td>
	          <td>
	          	<div class="button-group"> 
	          		<a class="button border-red" href="${bbs }/section/delete?sectionId=${section.sectionId}"><span class="icon-trash-o"></span> 删除</a> 
	          	</div>
	          </td>
	        </tr>
      </c:forEach>
    </table>
  </div>
</form>
</body>
</html>