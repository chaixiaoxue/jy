<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人才中心</title>
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
  
 <div id="right_style">
   <div class="Recruitment_List">
   <div class="title_name">人才中心</div>
   <div id="Recruit">
      <div class="AD_img"><img src="${bbs }/staticfile/images/AD-7.jpg" width="100%" /></div>
      <c:forEach items="${cvs}" var="d" varStatus="status">
			<ul class="Recruit">
	   <li class="Recruit_title">姓名：<span class="Post">${d.name}</span> 意向职位：${d.position} <span class="time">发布时间：<fmt:formatDate value='${d.createTime}' pattern="yyyy-MM-dd"/></span></li>
	   <li class="Recruit_Request ">
		 <p>年龄:</p>
		 <p>${d.age}</p>
		<p>薪水要求:</p>
		 <p>${d.money}</p>
	     <p>住址:</p>
		 <p>${d.address}</p>
	   </li>
	   <li class="btn_link "><a href="javascript:void(0)" class="Fill">联系我们获取详情</a></li>
	  </ul>
				
			</c:forEach>
			<div class="pagelist">
     		<div class="message">
  			共<i class="blue">${pageInfo.total}</i>条记录，当前显示第&nbsp;<i
     			class="blue">${pageInfo.pageNum}/${pageInfo.pages}</i>&nbsp;页
	</div>
	<br/>
	<div style="text-align:center;">
	    <ul class="pagination">
	    	<!-- 只显示5个页码 -->
	    	<c:set var="begin" value="0"/>
	    	<c:set var="end" value="0"/>
	    	<c:if test="${pageInfo.pages <=5}">
	    		<c:set var="begin" value="1"/>
	    		<c:set var="end" value="${pageInfo.pages }"/>
	    	</c:if>
	    	<c:if test="${pageInfo.pages>5}">
				<c:choose>
					<c:when test="${pageInfo.pageNum<=3 }">
						<c:set var="begin" value="1"/>
						<c:set var="end" value="5"/>
					</c:when>
					<c:when test="${pageInfo.pageNum>=pageInfo.pages-2 }">
						<c:set var="begin" value="${pageInfo.pages-4 }"/>
						<c:set var="end" value="${pageInfo.pages}"/>
					</c:when>
					<c:otherwise>
						<c:set var="begin" value="${pageInfo.pageNum-2 }"/>
						<c:set var="end" value="${pageInfo.pageNum+2 }"/>
					</c:otherwise>
				</c:choose>
			</c:if>
			
            <a style="color: black" href="javascript:page(${pageInfo.firstPage});">首页</a>
			<c:if test="${!pageInfo.isFirstPage}">
	        	<a style="color: black" href="javascript:page(${pageInfo.prePage});">上一页</a>
	        </c:if>
			<c:forEach begin="${begin }" end="${end }" step="1" var="i">
				<c:if test="${i==pageInfo.pageNum }">${i }</c:if>
				<c:if test="${i!=pageInfo.pageNum }">
				  <a style="color: black" href="javascript:page(${i})">${i }</a>
			    </c:if>
			</c:forEach>
			<c:if test="${!pageInfo.isLastPage}">
           	 	<a style="color: black" href="javascript:page(${pageInfo.nextPage});">下一页</a>
	        </c:if>
            <a style="color: black" href="javascript:page(${pageInfo.lastPage});">最后一页</a>
	    </ul>
	</div>
     		
</div>
   </div>
   </div>
   <div class="bon_img"></div>
 </div>
</div>
</div>
<script type="text/javascript">
	function page(pageNum){
		window.top.location.href="${bbs}/front/talent?pageNum="+pageNum
	}

</script>
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
