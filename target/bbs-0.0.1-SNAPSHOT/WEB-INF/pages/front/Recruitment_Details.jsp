<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>招聘详情</title>
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

 <div id="right_style">
   <div class="Recruitment_List">
   <div class="title_name">最新招聘</div>
   <div id="Recruit">
      <div class="AD_img"><img src="${bbs }/staticfile/images/AD-7.jpg" width="100%" /></div>
       <div class="Recruits">
	     <div class="Recruit_title"><span class="name">职位名称：${recruit.title }</span><span class="Amount">招聘人数：${recruit.num }人</span></div>
		 <div class="Recruit_content">
		   <p style="font-size:16px; font-weight:bold;">招聘对象：</p>
		   <p>${recruit.recruiting }</p>
<p style="font-size:16px; font-weight:bold;">工作薪资：</p>
		   <p>${recruit.money }</p>

<p style="font-size:16px; font-weight:bold;">工作要求：</p>
		   <p>${recruit.content }</p>

<p style="font-size:16px; font-weight:bold;">发布时间：</p>
		   <p><fmt:formatDate value='${recruit.createTime}' pattern="yyyy-MM-dd"/></p>
<p style="font-size:16px; font-weight:bold;">招聘期限：</p>
			<p>${recruit.requireddate }</p>
		 </div>
		 <div class="link"><a href="${bbs }/front/apply?parentId=${recruit.id }">简历投递</a></div>
	   </div>
   </div>
   </div>
   <div class="bon_img"></div>
 </div>
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
