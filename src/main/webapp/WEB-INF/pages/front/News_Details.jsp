<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻详情</title>
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
	<div class="Menu_Bar">
    <ul class="Section">
	  <c:forEach items="${news}" var="d" varStatus="status">
			<li><a href="new?id=${d.id }"  target="_blank">${d.title }</a></li>
				
			</c:forEach>
	</ul>
  </div>
  <div class="content">
    <div class="Ads"><img src="${bbs }/staticfile/images/imgs_03.png" /></div>
    <div class="End">  
	   <div class="Previous"><a href="${bbs }/front">返回首页</a></div>
	   <div class="title_style">
	     <p class="name">${onenew.title }</p>
		 <p><span>发布时间:<fmt:formatDate value='${onenew.createTime }' pattern="yyyy-MM-dd"/></span></p>
	   </div>
	   <div class="news_content">
	   
	   <textarea style="width:100%;height: 100%;" readonly="readonly"  >${onenew.content}</textarea>
</div>
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
