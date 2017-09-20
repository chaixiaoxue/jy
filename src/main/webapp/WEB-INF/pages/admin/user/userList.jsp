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
<link rel="stylesheet" href="${bbs }/staticfile/back/css/pintuer.css">
<link rel="stylesheet" href="${bbs }/staticfile/back/css/admin.css">
<script src="${bbs }/staticfile/back/js/jquery.js"></script>
<script src="${bbs }/staticfile/back/js/pintuer.js"></script>

</head>
<body>
<%@ include file="./head.jsp" %>
<table cellpadding="2" cellspacing="1" border="0" width="95%" align="center" class="table_southidc">
  <tr> 
    <td class="back_southidc" colspan="2" height="25" align="center"><b>管理快捷方式</b></td>
  </tr>
  <tr class="tr_southidc"> 
    <td width="50%" height="23" align="center">快捷功能链接</td>
    <td width="50%" height="23" align="center"><a href="${bbs}/user/toCreate"><font color="000000">管理员管理</font></a> </td>
  </tr>
</table>
<br>
<br>
<table cellpadding="2" cellspacing="1" border="0" width="95%" align="center" class="table_southidc">
  <tr> 
    <td class="back_southidc" colspan="2" height="25" align="center"><b>系统信息</b></td>
  </tr>
  <tr class="tr_southidc"> 
    <td width="48%" height="23">用户名：<font class="t4">${userSession.username}</font></td>
    <td width="52%">IP：<font class="t4">${userSession.lastLoginIp} </font></td>
  </tr>
  <!-- <script>
  	window.onload = function showcal(){
  		now = new Date();
  		var year
  		
  	}
  
  </script> -->
  <tr class="tr_southidc"> 
    <td width="48%" height="23">身份过期：<font class="t4"> 30分钟</font></td>
    <td width="52%">现在时间：<span><font class="t4"><fmt:formatDate value="${loginTime}" pattern="yyyy年MM月dd日  hh:mm:ss"/></font></span></td>
  </tr>
  <tr class="tr_southidc"> 
    <td width="48%" height="23">上线次数： <font class="t4">${userSession.times}次</font></td>
    <td width="52%">上线时间：<font class="t4">${userSession.lostLoginTime}</font></td>
  </tr>
  
  <tr class="tr_southidc">
    <td height="23">FSO文本读写： 
      
       
     
      <b>√</b> 
      
    </td>
    <td>数据库使用： 
     
       
      
      <b>√</b> 
      
    </td>
  </tr>
  <tr class="tr_southidc"> 
    <td width="48%" height="23">Jmail组件支持： 
       <font color="red"></font>  <b>√</b>  </td>
    <td width="52%">CDONTS组件支持： 
       <font color="red"></font>  <b>√</b>  </td>
    
  </tr>
</table>
<br>
<br>
<script type="text/javascript">
/* window.onload = function(){
	$.load("/user/addTime?");
} */
function page(pageNum) {
    $("#paging").load("${bbs}/user/list?pageNum=" + pageNum);
}

//搜索
function changesearch(){	
		
}

//全选
$("#checkall").click(function(){ 
  $("input[name='userId']").each(function(){
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
	 $("input[name='userId']").each(function(){
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
	 $("input[name='userId']").each(function(){
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
	 $("input[name='userId']").each(function(){
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
	 $("input[name='userId']").each(function(){
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
	 $("input[name='userId']").each(function(){
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
	 $("input[name='userId']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='userId']").each(function(){
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