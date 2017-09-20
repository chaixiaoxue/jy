<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${bbs }/staticfile/css/common.css"  />
<link type="text/css" rel="stylesheet" href="${bbs }/staticfile/css/banner.css"  />
<script type="text/javascript" src="${bbs}/staticfile/back/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${bbs }/staticfile/js/banner.js"></script>
<title></title>
<style type="text/css">
* html .clearfix{zoom:1;}
.clearfix:after{clear:both;display:block;visibility:hidden;height:0;content:".";font-size:0;}
</style>
</head>
<body>
	<div class="top" style="background:url(${bbs}/staticfile/images/bg.jpg) repeat;height:100%;">
		<!-- 头部 -->
		<div class="top_bg">
			<h1 class="logo">
				<a href="${bbs}/front"><div class="logo_sign1">星际要塞</div></a>
				<a href="first.jsp"><div class="logo_sign2"></a>
				<a href="${bbs }/front/post_list">官方论坛</a>
				<div class="login"><a href="first">返回首页</a></div>
			</h1>
		</div>
		<c:if test="${empty userSession}">
				<div class="userlogin">
					<a href="${bbs}/front/tologin"><div class="user_login">登录</div></a>
					<div class="fenge"></div>
					<div class="reg">
						<li><a href="">找回密码</a></li>
						<li><a href="register">注册通行证</a></li>
					</div>
				</div>
			</c:if>
			<c:if test="${!empty userSession}">
				<div class="userInput">
					<a href="${bbs}/front/userPost?userId=${userSession.userId}"><img  src="${bbs }/staticfile/images/people.gif"></a>
					 <div class="userInput_info">
						<div style="float:left;">
							<li>${userSession.username}</li>
							<li>主题：<span style="color:red;">${count}</span></li>
						</div>
						<div style="float:left;margin-left:20px;">
							<c:if test="${userSession.level==1}"><li>LV${userSession.level} 新手上路</li></c:if>
							<c:if test="${userSession.level==2}"><li>LV${userSession.level} 初学乍练</li></c:if>
							<c:if test="${userSession.level==3}"><li>LV${userSession.level} 略有小成</li></c:if>
							<c:if test="${userSession.level==4}"><li>LV${userSession.level} 渐入佳境</li></c:if>
							<c:if test="${userSession.level==5}"><li>LV${userSession.level} 炉火纯青</li></c:if>
							<c:if test="${userSession.level==6}"><li>LV${userSession.level} 已至大成</li></c:if>
							<c:if test="${userSession.level==7}"><li>LV${userSession.level} 登峰造极</li></c:if>
							<c:if test="${userSession.level==8}"><li>LV${userSession.level} 出神入化</li></c:if>
							<li>EXP:${userSession.exp} &nbsp;&nbsp;&nbsp;<a href="/post_list/exit" style="cursor:pointer;">退出</a></li>
						</div>
					</div>
				</div>
			</c:if>
		
		
		
		<div class="top_content">
			<div class="lunbo" id="box_lanrenzhijia">
			    <div class="list">
			        <ul>
			            <li><img src="${bbs }/staticfile/images/background1.png" width="640px" height="360px" /></li>
			            <li><img src="${bbs }/staticfile/images/background2.png" width="640px" height="360px" /></li>
			            <li><img src="${bbs }/staticfile/images/background3.png" width="640px" height="360px" /></li>
			            <li><img src="${bbs }/staticfile/images/background4.png" width="640px" height="360px" /></li>
			            <li><img src="${bbs }/staticfile/images/background5.png" width="640px" height="360px" /></li>
			        </ul>
			    </div>
			</div>
			
			
		</div>
		
		
		
		<div class="content">
			
			<div class="Post_content">
				星际要塞 -> 官方论坛-> 综合讨论
			</div>
			<div class="post_floor">
				<div class="floor_top">
					<li class="floor_author">查看:<span style="color:red">237</span> | 回复：<span style="color:red">5</span></li>
					<li class="floor_title">&nbsp;${post.postName}</li>
				</div>
				<div class="floor1">
					<div class="floor1_top">
						<li class="floor_author">${post.user.nickname} 楼主</li>
						<li class="floor_title">&nbsp;发表于：<fmt:formatDate value="${post.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
					</div>
					<div class="floor1_body">
						<li class="floor_author">
							<img src="${bbs}/staticfile/images/people.gif">
							<div>
								<c:if test="${post.user.level==1}"><font color="blue" >LV${post.user.level} 新手上路</font></c:if>
								<c:if test="${post.user.level==2}"><font color="blue" >LV${post.user.level} 初学乍练</font></c:if>
								<c:if test="${post.user.level==3}"><font color="blue" >LV${post.user.level} 略有小成</font></c:if>
								<c:if test="${post.user.level==4}"><font color="blue" >LV${post.user.level} 渐入佳境</font></c:if>
								<c:if test="${post.user.level==5}"><font color="blue" >LV${post.user.level} 炉火纯青</font></c:if>
								<c:if test="${post.user.level==6}"><font color="blue" >LV${post.user.level} 已至大成</font></c:if>
								<c:if test="${post.user.level==7}"><font color="blue" >LV${post.user.level} 登峰造极</font></c:if>
								<c:if test="${post.user.level==8}"><font color="blue" >LV${post.user.level} 出神入化</font></c:if>
							</div>
						</li>
						<li class="floor_title">
							<div class="floor_content">
								${post.postContent}
							</div>
							
							
						</li>
					</div>
				</div>
				<!-- 帖子回复 -->
				<c:forEach items="${post.rList}" var="r" varStatus="status">
				
					<div class="floor1">
						<div class="floor1_top">
							<li class="floor_author">${r.user.nickname} #${status.index+1}楼</li>
							<li class="floor_title">&nbsp;发表于：<fmt:formatDate value="${r.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
						</div>
						<div class="floor1_body">
							<li class="floor_author">
								<img src="${bbs}/staticfile/images/people.gif">
								<div>
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
							<li class="floor_title">
								<div class="floor_content">
									<div style="border: 10px;margin-left: 20px;">
									${r.replyContent}
								   		<div style="margin-top:30px;width:100%;height:1px;border-top:1px red dashed;"></div>
									</div>
									
									<!-- 回复的回复 -->
									<br/>
									<br/>
									<div id="${status.index+1}" style="margin-top:10px;margin-left: 50px;">
								   		 <c:forEach items="${r.rList}" var="rr" varStatus="s">
									   		 <%--  <c:if test="${s.count<3}" var="flag"> --%>
									   			<c:if test="${rr.user.nickname!=null}"><font color="green" size="2">${rr.user.nickname}说:</font><font size="2">${rr.replyContent }</font><br/></c:if>
									   		 	<c:forEach items="${rr.rList }" var="rrr">
										   		 	<c:if test="${rrr.user.nickname!=null }">
											   		 	&nbsp;&nbsp;<font color="green" size="2">${ rrr.user.nickname}回复${rr.user.nickname }:</font><font size="2">${rrr.replyContent }</font><br/>
										   		 	</c:if>
									   		 	</c:forEach>
								   		  	<%--  </c:if> --%>
								   		 </c:forEach> 
						   		 	 	<%-- <c:if test="${!flag}">
						   		 			<a  id="${status.index }111" href="javascript:void(0)" onclick="AjaxFindReply('${r.replyId}','${status.index+1 }','${status.index }111')">更多回复</a>
						   		 		</c:if> --%>
									</div>
									
									
								</div>
								
								
								<div class="floor_replay">
									<input type="button" value="回复" />
								</div>
							</li>
						</div>
					</div>
				</c:forEach>
				
				
				
			</div>
			
			
			
			
			
			
			<form action="" method="post">
				<div class="posted">
				<input type="hidden" name="user.userId" value="${userSession.userId}" />
				<input type="hidden" name="postId" value="${post.postId}" />
					<div class="quick_posted">
					回复
					</div>
					<div>
						<textarea name="replyContent" style="width:1000px;height:140px;margin-left:30px;margin-top:30px;"></textarea>
					</div>
					<input type="button"  value="发表回复" onclick="formSubmit('${bbs}/front/saveReply','_self')"> 
				</div>
			</form>
			
			<div style="width:100%;height:50px;"></div>
		
		</div>
			
			
			
			
		</div>
	
		
	</div>
	
	<div class="bottom">
		<img alt="" src="${bbs }/staticfile/images/bottom.png" width=100%>
	</div>
	<script type="text/javascript">
		function formSubmit (url,sTarget){
		    document.forms[0].target = sTarget
		    document.forms[0].action = url;
		    document.forms[0].submit();
		    return true;
		}
		function AjaxFindReply(replyId,o,a){
			$.post("${bbs}/front/ajaxFindReply",{replyId:replyId},function(data){
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
