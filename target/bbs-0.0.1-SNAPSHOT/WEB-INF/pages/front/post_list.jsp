<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${bbs }/staticfile/css/common.css"  />
<script type="text/javascript" src="${bbs }/staticfile/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${bbs }/staticfile/js/common.js"></script>
<title>星际要塞官方论坛</title>
</head>
<body>
	<div class="top" style="background:url(${bbs}/staticfile/images/bg.jpg) repeat;">
		<!-- 头部 -->
		<div class="top_bg">
			<h1 class="logo">
				<a href="${bbs}/front"><div class="logo_sign1">星际要塞</div></a>
				<div class="logo_sign2">
				<a href="${bbs }/front/post_list">官方论坛</a>
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
							<li>EXP:${userSession.exp} &nbsp;&nbsp;&nbsp;<a href="${bbs}/front/post_list/exit" style="cursor:pointer;">退出</a></li>
						</div>
					</div>
				</div>
			</c:if>
	
		<div class="banner">
			<div class="type">
				<div class="quick">
					<div class="fatie">
						<a href="#fatie"><input type="button" value="发 帖" /></a>
					</div>
					<div class="fatie_right">
						<div class="fatie_back">返 回</div>
						<li class="order">1</li>
						<li class="order">2</li>
						<li class="order">3</li>
						<li class="order">4</li>
						<li class="order">5</li>
						<li class="order">...</li>
						<li class="order">9</li>
						<li class="order">10</li>
						<li class="order">11</li>
						<li class="order">12</li>
						<div class="dianti">电梯直达:
							<input type="text" />/100页
						</div>
						<div class="fatie_back">下一页</div>
					</div>
				</div>
				
				<hr/>
				
				<div class="type_list">
					<li style="background:#ce0000;color:#FFF;font-weight: bold;margin-left:0">全部 <span class="tiao">1000</span></li>
					<li>活动公告 <span class="tiao">20</span></li>
					<li>攻略心得 <span class="tiao">115</span></li>
					<li>截图分享 <span class="tiao">100</span></li>
					<li>问题建议 <span class="tiao">445</span></li>
				</div>
			</div>
			
			<!-- 帖子列表 -->
			<div class="post_list">
				<div class="zhuti">
					<li style="width:800px;">
						<span class="title">全部主题 </span>
						<span class="title">热门 </span>
						<span class="title">精华  </span>
						<span class="title">新帖 </span>
					</li>
					<li >作者</li>
					<li>回复/查看</li>
					<li >最后发表</li>
				</div>
				<c:forEach items="${postList}" var="p">
					<c:if test="${p.top==1}">
						<div class="zhiding">
							<a href="${bbs}/front/post_content?postId=${p.postId}">
								<li class="post_title">&nbsp;<img src="${bbs }/staticfile/images/zhiding.gif">	${p.postName }</li>
							</a>
							<li class="post_author">
								<div class="author">${p.user.nickname }</div>
								<div class="post_ctratetime"><fmt:formatDate value="${p.passedTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
							</li>
							<li class="post_reply">39/210</li>
							<li class="post_author">
								<div class="author">${p.user.username}</div>
								<div class="post_ctratetime"><fmt:formatDate value="${p.creatTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
							</li>
						</div>
					</c:if>
				</c:forEach>
				<!-- 版块列表 -->
				<div style="width:1150px;height:40px;padding-left:30px;line-height: 40px;border-bottom:1px #ccc solid;">
					版块帖子列表
				</div>
				<c:forEach items="${postList}" var="p">
					<c:if test="${p.top == 0}">
						<div class="zhiding">
							<a href="${bbs}/front/post_content?postId=${p.postId}">
								<li class="post_title">&nbsp;<img src="${bbs }/staticfile/images/tiezi.gif"> ${p.postName }
									<c:if test="${p.cream==1}"><img alt="" src="${bbs }/staticfile/images/jing.gif"></c:if>
								</li>
							</a>
							<li class="post_author">
								<div class="author">${p.user.nickname}</div>
								<div class="post_ctratetime"><fmt:formatDate value="${p.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
							</li>
							<li class="post_reply">39/210</li>
							<li class="post_author">
								<div class="author">${p.user.nickname}</div>
								<div class="post_ctratetime"><fmt:formatDate value="${p.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
							</li>
						</div>
					</c:if>
				</c:forEach>
			</div>
			
			<!-- 分页 -->
			<div class="type" style="height:60px;">
				<div class="quick">
					<div class="fatie">
						<input type="button" value="发 帖" />
					</div>
					<div class="fatie_right">
						<div class="fatie_back">返 回</div>
						<li class="order">1</li>
						<li class="order">2</li>
						<li class="order">3</li>
						<li class="order">4</li>
						<li class="order">5</li>
						<li class="order">...</li>
						<li class="order">9</li>
						<li class="order">10</li>
						<li class="order">11</li>
						<li class="order">12</li>
						<div class="dianti">电梯直达:
							<input type="text" />/100页
						</div>
						<div class="fatie_back">下一页</div>
					</div>
				</div>
			</div>
			<!-- 发帖编辑器 -->
			<a name="fatie"></a>
			<form action="" method="post">
				<div class="posted">
					<div class="quick_posted">
					快速发帖
					</div>
					<input type="hidden" name="userId" value="${userSession.userId}"/>
					<div class="post_content">
						<select id="module" name="sectionId" class="module"  >
							<option>主题分类</option>
							<option value="1">综合讨论</option>
							<option value="2">攻略心得</option>
							<option value="3">截图分享</option>
							<option value="4">问题建议</option>
						</select>
						<input type="text" name="postName" placeholder="请输入标题" style="width:300px;"/><span style="font-size:13px;color:red;">标题不超过20个字</span>
					</div>
					<div>
						<c:if test="${userSession == null}">
							<textarea style="width:1000px;height:140px;margin-left:30px;color:red;margin-top:30px;"  disabled="disabled">
								您还没有登录，请先登录
							</textarea>
						</c:if>
						<c:if test="${userSession != null}">
							<textarea name="postContent" style="width:1000px;height:140px;margin-left:30px;margin-top:30px;"></textarea>
						</c:if>
					</div>
					<input class="fabiao" type="button" value="发表帖子" onclick="formSubmit('savePost','_self')">
				</div>
			</form>
			<div style="width:100%;height:50px;"></div>
		
		</div>
	<div style="height:10px"></div>
	</div>
	<div class="bottom">
		<img alt="" src="${bbs }/staticfile/images/bottom.png" width=100%>
	</div>
	
</body>
</html>