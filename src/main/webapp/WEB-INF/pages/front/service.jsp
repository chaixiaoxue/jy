<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>公司服务</title>
	<link href="${bbs }/staticfile/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${bbs }/staticfile/css/Service.css" rel="stylesheet" type="text/css" />
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
<div class="service">
<div class="bananer"><img src="${bbs }/staticfile/images/timg.jpg" width="100%"/></div>
<div id="main">
 <div class="Introduction">
    <p class="title">${service.title }介绍：</p>
	<p class="content">${service.content }</p>
 </div>
 <div style="text-align:center; margin-top:105px; margin-bottom:50px;"><img src="${bbs }${serviceImg.address }"/></div>
 <div class="Area">
  <div class="title">${service.title }具体介绍</div>
  <ul class="headhunting_content" style="margin-top:10px;">
   <c:forEach items="${sonservice}" var="d" varStatus="status">
			<li>
    <p class="Area_title"><em></em>${d.title }：</p>
	<p class="Detail_content">
	${d.content }
</p>
   </li>
				
			</c:forEach>
   
   
  </ul>
 </div>
<!--底部样式-->



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
 <%@include file="sonfoot.jsp" %>
 </div>
</div>
</body>
</html>
