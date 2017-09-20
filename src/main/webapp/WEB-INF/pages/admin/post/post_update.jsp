<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${bbs}/staticfile/back/css/content.css"  />
<link rel="stylesheet" href="${bbs}/staticfile/back/css/pintuer.css">
<link rel="stylesheet" href="${bbs}/staticfile/back/css/admin.css">
<script src="${bbs}/staticfile/back/js/jquery.js"></script>
<script src="${bbs}/staticfile/back/js/pintuer.js"></script>
<title></title>
<style type="text/css">
	* html.clearfix{zoom:1;}
	.clearfix:after{clear:both;display:block;visibility:hidden;height:0;content:".";font-size:0;}
</style>
</head>
<body>
<form method="post"  id="listform">
	<div class="panel admin-panel">
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
     	<li> <a class="button border-main icon-refresh" href="${bbs }/post/update?postId=${post.postId}"> 通   过</a> </li>
      </ul>
    </div>
    </div>
	<div class="floor1_top">
		<div style="width:1150px;height=30px;border:1px #CCC solid;">
			<div class="floor1">
				 <div class="floor1_top">
					<li class="floor_author">楼主:${post.user.nickname}</li>
					<li class="floor_title">&nbsp;发表于：<fmt:formatDate  value="${post.createTime}" pattern="yyyy-MM-dd"/></li>
				</div> 
				<div class="floor1_body">
					 <li class="floor_author">
						<img src="${bbs}/staticfile/images/people.gif">
						<div class="info">
							<c:if test="${post.user.level==1}">LV${post.user.level} 新手上路</c:if>
							<c:if test="${post.user.level==2}">LV${post.user.level} 初学乍练</c:if>
							<c:if test="${post.user.level==3}">LV${post.user.level} 略有小成</c:if>
							<c:if test="${post.user.level==4}">LV${post.user.level} 渐入佳境</c:if>
							<c:if test="${post.user.level==5}">LV${post.user.level} 炉火纯青</c:if>
							<c:if test="${post.user.level==6}">LV${post.user.level} 已至大成</c:if>
							<c:if test="${post.user.level==7}">LV${post.user.level} 登峰造极</c:if>
							<c:if test="${post.user.level==8}">LV${post.user.level} 出神入化</c:if>
						</div>
					</li>
					 
						<div class="floor_content">
							${post.postContent}
						</div>
					
				</div> 
			</div>
			</div>
	</div>
	<div class="content">
		<div style="width:1150px;height=100%;border:1px #CCC solid;">
		<c:forEach items="${post.rList}" var="r">
			<div  class="floor1">
				<div class="floor1_top">
					<li class="floor_author">
						<c:if test="${r.user.userId==post.user.userId}">
							楼主：${post.user.nickname}
						</c:if>
						<c:if test="${r.user.userId!=post.user.userId}">
							层主:${r.user.nickname}
						</c:if>
						
					</li>
					<li class="floor_title">&nbsp;发表于：<fmt:formatDate  value="${r.createTime}" pattern="yyyy-MM-dd"/></li>
				</div>
				<div class="floor1_body">
					<li class="floor_author">
						<img src="${bbs}/staticfile/images/people.gif">
						<div class="info">
							<c:if test="${r.user.level==1}"><font color="blue" >LV${r.user.level} 新手上路</font></c:if>
							<c:if test="${r.user.level==2}"><font color="blue" >LV${r.user.level} 初学乍练</font></c:if>
							<c:if test="${r.user.level==3}"><font color="blue" >LV${r.user.level} 略有小成</font></c:if>
							<c:if test="${r.user.level==4}"><font color="blue" >LV${r.user.level} 渐入佳境</font></c:if>
							<c:if test="${r.user.level==5}"><font color="blue" >LV${r.user.level} 炉火纯青</font></c:if>
							<c:if test="${r.user.level==6}"><font color="blue" >LV${r.user.level} 已至大成</font></c:if>
							<c:if test="${r.user.level==7}"><font color="blue" >LV${r.user.level} 登峰造极</font></c:if>
							<c:if test="${r.user.level==8}"><font color="blue" >LV${r.user.level} 出神入化</font></c:if>
						</div>
					</li>
						<div class="floor_content">
							${r.replyContent}
						</div>
						<!-- <div style="margin-top:250px;margin-left: 1000px">
							<a href="#">更多回复</a>
						</div> -->
				</div>
			</div>
		</c:forEach>
		</div>
	</div>
</form>
	<script type="text/javascript">
		function updateState(){
			
		}
	</script>
</body>
</html>