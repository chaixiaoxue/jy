<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线留言</title>
	<link href="${bbs }/staticfile/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${bbs }/staticfile/css/style.css" rel="stylesheet" type="text/css" />
	<script src="${bbs }/staticfile/js/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.source.js" type="text/javascript"></script>
	<script type="text/javascript" src="${bbs }/staticfile/js/slider.js"></script>	
	<script src="${bbs }/staticfile/js/fk.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/common.js"></script>
</head>
<body>
<!--顶部样式-->
<%@include file ="sonhead.jsp" %>
<!--qq样式-->
<!-- 代码 开始 -->
<div id="main">
<div id="page">
  <div class="content">
    <div class="Ads"><img src="${bbs }/staticfile/images/AD-3.jpg" width="100%"/></div>
	  <div class="message">
	<form action="${bbs }/front/savemessage" method="post" id="theAddForm">
	 <ul>
	  <li><label>咨询标题</label><input name="subject" type="text"  class="text_title" value="${leave.subject }"/></li>
	  <li><label>资讯内容*</label><textarea  style="width:700px;height:300px;border:1px solid #B3B3B3;" name="content"  >${leave.content }</textarea></li>
	  <li class="message_title"><span style="padding-left:10px;">请留下您的联系方式，以便我们的服务跟进。(带* 为必填项)</span></li>
	  <li><label>姓 &nbsp;&nbsp;&nbsp;&nbsp;名*</label><input name="username" type="text"   class="text" value="${leave.username }" /></li>
	  <li><label>电 &nbsp;&nbsp;&nbsp;&nbsp;话</label><input name="phone" onblur="checkPhone('phone', '请输入数字')"
	  type="text"   class="text" value="${leave.phone }"/></li>
	  <li><label>Q&nbsp;&nbsp;&nbsp;&nbsp;Q</label><input name="qq" type="text"   class="text" value="${leave.qq }"/></li>
	  <li><label>电子邮件*</label><input name="email" onblur="checkEmail('email', '邮箱格式不正确')" type="text"   class="text" value="${leave.email }"/><span id="email_msg"></span></li>
	  <li><label>单位/地址</label><input name="address" type="text"  class="Add" value="${leave.address }"/></li>
	  <li><label>验证码</label><input type="text" name="valistr" class="text" onblur="checkNull('valistr', '验证码不能为空')"/>
					<img onclick="changeImage(this)" src="${bbs}/front/ValiImage"/>
					<span id="valistr_msg"></span>
				</li>
	  <li class="btn_Click">
	  <input type="submit"  name="submit" class="submit" value="提交留言"/>
	  <input type="reset"  name="reset" class="reset" value="取消重置"/>
	  <span style="color:red; margin-left: 130px" >${msg }</span>
	  </li>
	 </ul>
	 </form>
  </div>
  </div>
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
