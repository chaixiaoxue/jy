<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="bbs" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我要应聘</title>
	<link href="${bbs }/staticfile/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${bbs }/staticfile/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${bbs}/staticfile/js/jquery-1.8.3.js"></script>
	<script src="${bbs }/staticfile/js/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.source.js" type="text/javascript"></script>
	<script type="text/javascript" src="${bbs }/staticfile/js/slider.js"></script>	
	<script src="${bbs }/staticfile/js/fk.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/common.js"></script>
	<script>
	function formSubmit (url,sTarget){
	    document.forms[0].target = sTarget
	    document.forms[0].action = url;
	    document.forms[0].submit();
	    return true;
	}
	function checkAll(who, obj){
		var curCheckBox = document.getElementsByName(who);
		for(i = 0; i < curCheckBox.length; i++){
			curCheckBox.item(i).checked = obj.checked;
		}
	}
</script>
</head>
<body>
<!--顶部样式-->
<%@include file ="sonhead.jsp" %>
<!--qq样式-->
<!-- 代码 开始 -->
<div id="main">
<div id="page">
  <div class="Menu_Bar">
    <ul class="Section">
	  <li><a href="call">联系方式</a></li>
	  <li><a href="message">在线留言</a></li>
	  <li><a href="resume">简历注册</a></li>
	</ul>
  </div>
  <form action="${bbs }/front/saveapply" method="post" id="theAddForm">
  <input hidden="hidden" name = "parentId" value="${parentId }">
  <div class="content">
    <div class="Ads"><img src="${bbs }/staticfile/images/AD-0.png" /></div>
	    <div class="Resume">
		 <div class="Basic_Resume">
		 <div class="Basic_info"><span>基本信息</span></div>
		  <ul class="Resume_style">
		    <li><label>姓&nbsp;&nbsp;名*</label><input name="username" type="text" class="text" style="width:100px;"/></li>
		  </ul>
		  <ul class="Resume_style">
			<li><label>手机号码*</label><input name="phone" type="text" class="text" style="width:200px;"/></li>
		  </ul>
		  </div>
		
		<div class="CV_content">	
		</div>
		 <div class="btn_Click"><label>验证码</label><input type="text" name="valistr" class="text" onblur="checkNull('valistr', '验证码不能为空')"/>
					<img onclick="changeImage(this)" src="${bbs}/front/ValiImage"/>
					<span id="valistr_msg"></span>
				</li></div>
		  <div class="btn_Click"><input type="submit"  name="submit" class="submit" value="提交简历"/>
	  <input type="reset"  name="reset" class="reset" value="取消重置"/></div>
		<span style="color:red; margin-left: 130px" >${msg }</span>
		</div>
  </div>
  </form>
  <div class="bt_img"></div>
</div>
</div>
<!--底部样式-->
<%@include file="sonfoot.jsp" %>


<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?f1c59489c35a6827d9f11d4f6ea164f6";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script></p>
   </div>
 </div>
 </div>
</div>
</body>
</html>
