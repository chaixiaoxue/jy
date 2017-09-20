<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
	<link href="${bbs }/staticfile/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${bbs }/staticfile/css/style.css" rel="stylesheet" type="text/css" />
	<script src="${bbs }/staticfile/js/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.source.js" type="text/javascript"></script>
	<script type="text/javascript" src="${bbs }/staticfile/js/slider.js"></script>	
	<script src="${bbs }/staticfile/js/fk.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery-1.8.3.js" type="text/javascript"></script>
	
</head>
<body>
<!--顶部样式-->
<div id="header">
 <div id="top">
  <div class="top">
 <div class="logo"><a href="#"><img src="${bbs }/staticfile/images/logo.png" /></a></div>
  <div class="Search">
  
  <p><form>
	</form>   </p>
 </div>
 </div>
 <div class="Hotline"><img  src="${bbs }/staticfile/images/Hotline.png" /></div>
 <div id="Menu">
  <ul id="nav">
	    <li class="mainlevel" id="mainlevel"><a href="index.html" target="_blank" >首页</a>          
        </li>
		   <li class="mainlevel" id="mainlevel"><a href="gd_news.html" target="_blank"> 瑞方资讯</a>
           <ul id="sub">
		    <div class="Arrow"></div>
			<li><a href="#" target="_blank">瑞方信息</a></li>
			<li><a href="#" target="_blank">瑞方观点</a></li>
			<li><a href="#" target="_blank">知识问答</a></li>	
			<li><a href="#" target="_blank">瑞方活动</a></li>				
          </ul>
        </li>
		   <li class="mainlevel" id="mainlevel"><a href="Recruitment.html" target="_blank" class="Activity">最新招聘</a>
        </li>
		 <li class="mainlevel" id="mainlevel"><a href="javascript:void(0)" target="_blank" class="Review">关于聚优</a>
           <ul id="sub">
		   <div class="Arrow"></div>
		   <c:forEach items="${comList}" var="d" varStatus="status">
			<li><a href="front/about?id=${d.id }"  target="_blank">${d.title }</a></li>
				
			</c:forEach>
          </ul>
        </li>
		 <li class="mainlevel" id="mainlevel"><a href="Contact_us.html" target="_blank" class="Campsite">联系我们</a>
           <ul id="sub">
		   <div class="Arrow"></div>
			<li><a href="/front/call" target="_blank">联系方式</a></li>
			<li><a href="/front/message" target="_blank">在线留言</a></li>
			<li><a href="#" target="_blank">简历注册</a></li>			
          </ul>
        </li>		
	 </ul>
 </div>
 </div>
</div>

</body>
</html>