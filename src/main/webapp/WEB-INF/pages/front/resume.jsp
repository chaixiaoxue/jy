<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="bbs" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>简历注册</title>
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
  <form action="${bbs }/front/savecv" method="post" id="theAddForm">
  <div class="content">
    <div class="Ads"><img src="${bbs }/staticfile/images/AD-4.png" /></div>
	    <div class="Resume">
		 <div class="Basic_Resume">
		 <div class="Basic_info"><span>基本信息</span></div>
		  <ul class="Resume_style">
		    <li><label>姓&nbsp;&nbsp;名*</label><input name="name" type="text" class="text" style="width:100px;"/></li>
			<li><label>年&nbsp;&nbsp;龄</label><input name="age" type="text" class="text" style="width:200px;"/></li>
			<li><label>邮&nbsp;&nbsp;箱*</label><input name="email" onblur="checkEmail('email', '邮箱格式不正确')" type="text" class="text" style="width:200px;"/><span id="email_msg"></span></li>
			<li><label>意向职位</label><input name="position" type="text" class="text" style="width:200px;"/></li>
			<li><label>现居住地</label><input name="address" type="text" class="text"  style="width:300px;"/></li>
		  </ul>
		  <ul class="Resume_style">
		   <li><label>姓&nbsp;&nbsp;别*</label>
		   <input type="radio" name="sex" value="0"/><font color="red">男</font>
      	  <input type="radio" name="sex" value="1"/><font color="green">女</font></li>
			<li><label>意向行业</label><input name="industry" type="text" class="text" style="width:200px;"/></li>
			<li><label>期望薪酬</label><input name="money" onblur="checkMoney('money', '请输入数字')" type="text" class="text" style="width:200px;"/><span id="money_msg"></span></li>
			<li><label>手机号码*</label><input name="phone" onblur="checkPhone('phone', '请输入数字')" type="text" class="text" style="width:200px;"/><span id="phone_msg"></span></li>
			<li><label>Q&nbsp;&nbsp;Q</label><input name="qq" type="text" class="text" style="width:200px;"/></li>		
		  </ul>
		  </div>
		
		<div class="CV_content">
		  <ul>
		   <li class="Basic_info"><span>工作经历</span></li>
		   <li class="text_content">
		     <textarea name="workingexperience" cols="" rows="" class="textarea"></textarea>
		   </li>
		  </ul>	
		   <ul>
		   <li class="Basic_info"><span>教育培训经历</span></li>
		   <li class="text_content">
		     <textarea name="educationexperience" cols="" rows="" class="textarea"></textarea>
		   </li>
		  </ul>	
		    <ul>
		   <li class="Basic_info"><span>技能与特长</span></li>
		   <li class="text_content">
		     <textarea name="skillsexpertise" cols="" rows="" class="textarea"></textarea>
		   </li>
		  </ul>	
		   <ul>
		   <li style=" color:#FF0000; line-height:24px; text-align:right">注：您可以在上面框内粘贴您的详细简历，有适合您的职位，聚优人力将第一时间联系您！</li>
		  </ul>	
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
