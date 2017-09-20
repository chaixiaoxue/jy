<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="bbs" value="${pageContext.request.contextPath}"/>
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
	    <li class="mainlevel" id="mainlevel"><a href="${bbs }/front" target="_blank" >首页</a>          
        </li>
		   <li class="mainlevel" id="mainlevel"><a href="javascript:void(0)" target="_blank"> 聚优资讯</a>
           <ul id="sub">
		    <div class="Arrow"></div>
			<c:forEach items="${news}" var="d" varStatus="status">
			<li><a href="new?id=${d.id }"  target="_blank">${d.title }</a></li>
				
			</c:forEach>
			<li><a href="talent"  target="_blank">人才中心</a></li>			
          </ul>
        </li>
		   <li class="mainlevel" id="mainlevel"><a href="Recruitment" target="_blank" class="Activity">最新招聘</a>
        </li>
		 <li class="mainlevel" id="mainlevel"><a href="javascript:void(0)" target="_blank" class="Review">关于聚优</a>
           <ul id="sub">
		   <div class="Arrow"></div>
		   <c:forEach items="${parts}" var="d" varStatus="status">
			<li><a href="about?id=${d.id }"  target="_blank">${d.title }</a></li>
				
			</c:forEach>
          </ul>
        </li>
		 <li class="mainlevel" id="mainlevel"><a href="call" target="_blank" class="Campsite">联系我们</a>
           <ul id="sub">
		   <div class="Arrow"></div>
			<li><a href="call" target="_blank">联系方式</a></li>
			<li><a href="message" target="_blank">在线留言</a></li>
			<li><a href="resume" target="_blank">简历注册</a></li>			
          </ul>
        </li>		
	 </ul>
 </div>
 </div>
</div>

</body>
</html>