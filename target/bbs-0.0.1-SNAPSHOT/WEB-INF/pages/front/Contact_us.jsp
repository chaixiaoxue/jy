<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>联系我们</title>
	<link href="${bbs }/staticfile/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${bbs }/staticfile/css/style.css" rel="stylesheet" type="text/css" />
	<script src="${bbs }/staticfile/js/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.source.js" type="text/javascript"></script>
	<script type="text/javascript" src="${bbs }/staticfile/js/slider.js"></script>	
	<script src="${bbs }/staticfile/js/fk.js" type="text/javascript"></script>
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
	  <li ><a href="call">联系方式</a></li>
	  <li><a href="message">在线留言</a></li>
	  <li><a href="resume">简历注册</a></li>
	</ul>
  </div>
  <div class="content">
    <div class="Ads"><img width="100%" src="${bbs }/staticfile/images/AD-3.jpg" /></div>
    <div class="contact">  
	  <ul class="conts">
	   <li class="name">${web_Set.title }</li>
	   <li>办公地址：${web_Set.comAddress }  </li>     
	   <li>公司电话：${web_Set.phone }</li>
       <li>公司传真：${web_Set.fax }</li>
       <li>公司网址：${web_Set.webAddress }</li>
	  </ul>
	 </div>
	 <div class="Free_Phone"><p class="left"><label>公司免费服务热线:</label><span>0313-2017699</span></p> <p class="right"><label>员工免费服务热线:</label><span>0313-2017699</span></p></div>
	 <div class="map" style="  center">
	  <%@ include file='map.html' %>
	  
      <p>河北省张家口市桥东区报业大厦10层</p>
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
