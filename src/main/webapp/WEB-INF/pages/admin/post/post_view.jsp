<%@page import="cn.two.bbs.pojo.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${bbs}/staticfile/back/css/content.css"  />
<title></title>
<style type="text/css">
	* html.clearfix{zoom:1;}
	.clearfix:after{clear:both;display:block;visibility:hidden;height:0;content:".";font-size:0;}
</style>

</head>
<body>
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
		<c:forEach items="${post.rList}" var="r" varStatus="status">
			<div  class="floor1">
				<div class="floor1_top">
					<li class="floor_author">
					
						<c:if test="${r.user.userId==post.user.userId}">
							${status.index+1}楼 &nbsp;&nbsp;楼主：${post.user.nickname}
						</c:if>
						<c:if test="${r.user.userId!=post.user.userId}">
							${status.index+1}楼&nbsp;&nbsp;层主:${r.user.nickname}
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
						<br/>
						<br/>
						<div id="${status.index+1}" style="margin-top:40px;margin-left: 200px;">
					   		
					   		 <c:forEach items="${r.rList}" var="rr" varStatus="s">
						   		  <c:if test="${s.count<3}" var="flag">
						   			<c:if test="${rr.user.nickname!=null}"><font color="green" size="2">${rr.user.nickname}说:</font><font size="2">${rr.replyContent }</font><br/></c:if>
						   		 	<c:forEach items="${rr.rList }" var="rrr">
							   		 	<c:if test="${rrr.user.nickname!=null }">
								   		 	&nbsp;&nbsp;<font color="green" size="2">${ rrr.user.nickname}回复${rr.user.nickname }:</font><font size="2">${rrr.replyContent }</font><br/>
							   		 	</c:if>
						   		 	</c:forEach>
					   		  	 </c:if>
					   		 </c:forEach> 
			   		 	 	<c:if test="${!flag}">
			   		 			<a  id="${status.index }111" href="javascript:void(0)" onclick="AjaxFindReply('${r.replyId}','${status.index+1 }','${status.index }111')">更多回复</a>
			   		 		</c:if>
						</div>
			</div>
		</c:forEach>
		</div>
	
	</div>

	<script type="text/javascript">
	
	function AjaxFindReply(replyId,o,a){
		$.post("${bbs}/post/ajaxFindReply",{replyId:replyId},function(data){
			for(var i=2;i<data.length;i++){
				var nickname=data[i].user.nickname;
				var content=data[i].replyContent;
				var rList=data[i].rList;
				var font1="<font color='green' size='2'>"+nickname+"说：</font><font size='2'>"+content+"<br/></font>";
				$("#"+o).append(font1);
				for(var j=0;j<rList.length;j++){
					var rnickname=rList[j].user.nickname;
					var rcontent=rList[j].replyContent;
				if(rnickname){
					
					var font2="&nbsp;&nbsp;<font color='green' size='2'>"+rnickname+"回复"+nickname+"</font>:<font size='2'>"+rcontent+"<br/></font>";
					$("#"+o).append(font2);
					continue;
				}
				}
				
			}
			//删除这个标签
			$("#"+a).remove();
		});
	}
	</script>
</body>
</html>