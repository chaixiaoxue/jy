<%@page import="cn.two.bbs.pojo.Post"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${bbs }/staticfile/css/common.css"  />
<script type="text/javascript" src="${bbs }/staticfile/js/common.js"></script>
<script type="text/javascript" src="${bbs }/staticfile/js/jquery-1.8.3.js"></script>
<title></title>
<style type="text/css">
* html .clearfix{zoom:1;}
.clearfix:after{clear:both;display:block;visibility:hidden;height:0;content:".";font-size:0;}
</style>
</head>
<body>
	<div class="top" style="background:url(${bbs}/staticfile/images/bg.jpg) repeat;min-height:940px;">
		<!-- 头部 -->
		<div class="top_bg">
			<h1 class="logo">
				<a href="${bbs}/front"><div class="logo_sign1">星际要塞</div></a>
				<a href="first.jsp"><div class="logo_sign2"></a>
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
		
		<input type="hidden" id="userId" value="${userSession.userId}">
		<div class="user">
			<div class="user_info">
				<img src="${bbs }/staticfile/images/people.gif">
				<div class="user_name">${userSession.nickname}</div>
			</div>
			<div class="theme">
				<div class="user_data" onclick="myinfo()">个人资料</div>
				<div class="user_theme" onclick="mypost()">我的帖子</div>
				<div class="user_reply" onclick="myreply()">我的回复</div>
			</div>
			<div class="info" id="info">
				<li>
					昵称：${userSession.nickname}
					&nbsp;&nbsp;
					<span style="font-size:14px;color:#2996CC;cursor: pointer;" onclick="changePass()">修改密码</span>
				</li>
				<li>
					邮箱：${userSession.email}
					&nbsp;&nbsp;用户组：${userSession.group.groupName }
				</li>
				<li>主题：<span style="color:#FFF;">${count}</span>&nbsp;
					回复：<span style="color:#FFF;">${countReply}</span></li>
				<li>等级：<span style="color:#FFF;">${userSession.level}</span>&nbsp;
				EXP：<span style="color:#FFF;">${userSession.exp}</span>&nbsp;
				</li>
				<li>注册时间：<span style="color:#FFF;"><fmt:formatDate value="${userSession.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
				</li>
			</div>
			<div class="password">
				<li>原 密 码：<input type="text"  /></li>
				<li>新 密 码：<input type="text"  /></li>
				<li>确认密码：<input type="text"  /></li>
				<div class="passbtn">提交</div>
				<div class="passbtn" onclick="changeback()">返回</div>
			</div>
			<div class="mypost">
				<div class="mypost_title">
					<li style="width:600px;text-align: center">主题</li>
					<li style="width:200px;">版块</li>
					<li style="width:100px;">回复/查看</li>
					<li style="width:250px;text-align:center;">发帖时间</li>
				</div>
				<c:forEach items="${postList}" var="p">
					<div class="mypost_title">
						<a href="${bbs}/front/post_content?postId=${p.postId}"><li style="width:600px;text-align: center">${p.postName}</li></a>
						<a href="${bbs }/front/post_list"><li style="width:200px;">${p.section.sectionName}</li></a>
						
						<c:forEach items="${p.rList }" varStatus="status">
							<c:if test="${status.last }">
							<c:set var="length" value="${status.count}" scope="request"></c:set>
							</c:if>
						</c:forEach>
						<li style="width:100px;" >${length}/<a href="${bbs}/front/post_content?postId=${p.postId}">查看</a></li>
						<li style="width:250px;text-align:center;"><fmt:formatDate value="${p.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
					</div>
				</c:forEach>
			</div>
			<div class="myreply">
				<div class="mypost_title">
					<li style="width:600px;text-align: center">主题</li>
					<li style="width:200px;">版块</li>
					<li style="width:100px;">回复/查看</li>
					<li style="width:250px;text-align:center;">回复时间</li>
				</div>
				<c:forEach items="${postReply}" var="p">
					<div class="mypost_title">
						<a href="${bbs}/front/post_content?postId=${p.postId}"><li style="width:600px;text-align: center">${p.postName}</li></a>
						<a href="${bbs }/front/post_list"><li style="width:200px;">${p.section.sectionName}</li></a>
						<c:forEach items="${p.rList }" varStatus="status">
							<c:if test="${status.last }">
							<c:set var="length" value="${status.count }" scope="request"></c:set>
							</c:if>
						</c:forEach>
						<li style="width:100px;" >${length}/<a href="${bbs}/front/post_content?postId=${p.postId}">查看</a></li>
						<li style="width:250px;text-align:center;"><fmt:formatDate value="${p.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
					</div>
				</c:forEach>
			</div>
			
		</div>
		
		<div style="height:221px;"></div>
	</div>
	
	<div class="bottom">
		<img alt="" src="${bbs }/staticfile/images/bottom.png" width=100%>
	</div>
</body>
</html>