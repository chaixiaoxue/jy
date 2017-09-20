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
		</div>
	</div>
	
	<div class="bottom">
		<img alt="" src="${bbs }/staticfile/images/bottom.png" width=100%>
	</div>
	
	<!-- 登录界面 -->
	<form method="post" id="listform">
		<div class="login_interface">
			<li>账&nbsp;&nbsp;号：<input type="text" id="username" placeholder="用户名/邮箱"/></li>
			<li>密&nbsp;&nbsp;码：<input type="password" id="password" /></li>
			<div style="text-align: center;height:40px;color:red;line-height: 40px;" id="error"></div>
			<div class="login_btn" onclick="userLogin('/login')">登录</div>
			<div class="back_btn" onclick="quxiao()">取消</div>
		</div>
	</form>
</body>
</html>