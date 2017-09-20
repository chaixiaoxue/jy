<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${bbs }/staticfile/css/common.css"  />
<script src="${bbs }/staticfile/js/common.js"></script>
<script src="${bbs }/staticfile/js/jquery-1.8.3.js"></script>
<title>星际要塞官方论坛</title>
</head>
<body>
	<div class="top" style="height:977px;">
		<!-- 头部 -->
		<div class="top_bg">
			<h1 class="logo">
				<div class="logo_sign1"><a href="first">星际要塞</a></div>
				<div class="logo_sign2">
				官方论坛
			</h1>
			<c:if test="${empty userSession}">
				<div class="userlogin">
					<div class="user_login" onclick="login()">登录</div>
					<div class="fenge"></div>
					<div class="reg">
						<li><a href="">找回密码</a></li>
						<li><a href="">注册通行证</a></li>
					</div>
				</div>
			</c:if>
			<c:if test="${!empty userSession}">
				<div class="userInput">
					<a href="user_info"><img  src="${bbs }/staticfile/images/people.gif"></a>
					 <div class="userInput_info">
						<div style="float:left;">
							<li>${userSession.username}</li>
							<li>主题：<span style="color:red;">${userSession.count}</span></li>
						</div>
						<div style="float:left;margin-left:20px;">
							<li>${userSession.level}</li>
							<li>EXP:${userSession.exp} &nbsp;&nbsp;&nbsp;<a href="${bbs}/front/first/exit" style="cursor:pointer;">退出</a></li>
						</div>
					</div>
				</div>
			</c:if>
		</div>
		<!-- 注册界面 -->
		<form method="post" id="listform">
			<div class="reg_interface">
				<li style="padding-top:30px;">用 户 名：<input type="text" name="username" onblur="ajaxCheckUserName(this)" />
					<span id="username_msg"></span>
				</li>
				<li>密&nbsp;&nbsp;码：<input type="password" name="password"  onblur="checkNull('password', '密码不能为空')"/>
					<span id="password_msg"></span>
				</li>
				<li>确认密码：<input type="password" name="password2" onblur="checkPassword('password', '两次密码不一致')"/>
					<span id="password2_msg"></span>
				</li>
				<li>昵&nbsp;&nbsp;称：<input type="text" name="nickname" onblur="checkNull('nickname', '昵称不能为空')"/>
					<span id="nickname_msg"></span>
				</li>
				<li>邮&nbsp;&nbsp;箱：<input type="text" name="email" onblur="checkEmail('email', '邮箱格式不正确')"/>
					<span id="email_msg"></span>
				</li>
				<li>验 证 码：<input type="text" name="valistr" style="width:160px;" onblur="checkNull('valistr', '验证码不能为空')"/>
					<img onclick="changeImage(this)" src="${bbs}/ValiImage"/>
					<span id="valistr_msg"></span>
				</li>
				
				<div class="reg_btn" onclick="formSubmit('${bbs}/front/regist','_self')">注 册</div>
				<a href="first"><div class="regback_btn">返回</div></a>
			</div>
		</form>
		
		
	</div>
	
	<div class="bottom">
		<img alt="" src="${bbs }/staticfile/images/bottom.png" width=100%>
	</div>
	
</body>
</html>