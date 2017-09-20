<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>聚优人力资源有限公司后台管理</title>  
    <link rel="stylesheet" href="${bbs }/staticfile/back/css/pintuer.css">
    <link rel="stylesheet" href="${bbs }/staticfile/back/css/admin.css">
    <script src="${bbs }/staticfile/back/js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="${bbs }/staticfile/back/images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />聚优人力资源有限公司后台管理</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="${bbs }/front" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="${bbs }/tologin"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>系统管理</h2>
  <ul style="display:none">
    <li><a href="${bbs }/user/toCreate" target="right"><span class="icon-caret-right"></span>创建用户</a></li>
    <li><a href="${bbs }/user/todelete" target="right"><span class="icon-caret-right"></span>用户管理</a></li>
    <li><a href="${bbs }/user/toUpdate" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
    <li><a href="${bbs }/img/list" target="right"><span class="icon-caret-right"></span>上传图片管理</a></li>
    <li><a href="${bbs }/user/webset" target="right"><span class="icon-caret-right"></span>网站配置</a></li>
    <li><a href="${bbs }/user/backupDatebase" target="right"><span class="icon-caret-right"></span>数据库备份</a></li>
    <li><a href="${bbs }/img/subimg" target="right"><span class="icon-caret-right"></span>上传图片</a></li>
  </ul>   
  <h2><span class="icon-list-alt"></span>公司信息</h2>
  <ul style="display:none">
    <li><a href="${bbs }/company/create" target="right"><span class="icon-caret-right"></span>新增公司信息</a></li>
    <li><a href="${bbs }/company/list" target="right"><span class="icon-caret-right"></span>管理公司信息</a></li>
  </ul>  
    <h2><span class="icon-pencil-square-o"></span>服务项目管理</h2>
  <ul>
    <li><a href="${bbs }/service/list" target="right"><span class="icon-caret-right"></span>服务项目管理</a></li>
    <li><a href="${bbs }/service/create" target="right"><span class="icon-caret-right"></span>添加服务子栏目</a></li>
  	<li><a href="${bbs }/service/sonlist" target="right"><span class="icon-caret-right"></span>服务子栏目管理</a></li>
  </ul>
  <h2><span class="icon-pencil-square-o"></span>人才中心</h2>
  <ul>
  	<li><a href="${bbs}/talent/create" target="right"><span class="icon-caret-right"></span>添加人才类别</a></li>
    <li><a href="${bbs}/talent/cvcreate" target="right"><span class="icon-caret-right"></span>添加人才</a></li>
    <li><a href="${bbs }/talent/cvlist" target="right"><span class="icon-caret-right"></span>人才管理</a></li>
    <li><a href="${bbs }/talent/list" target="right"><span class="icon-caret-right"></span>人才类别管理</a></li>
  </ul> 
  <h2><span class="icon-pencil-square-o"></span>新闻管理</h2>
  <ul>
    <li><a href="${bbs}/new/newscreate" target="right"><span class="icon-caret-right"></span>添加新闻内容</a></li>
    <li><a href="${bbs }/new/newslist" target="right"><span class="icon-caret-right"></span>管理全部新闻</a></li>
    <li><a href="${bbs }/new/list" target="right"><span class="icon-caret-right"></span>管理新闻类别</a></li>
    <li><a href="${bbs}/new/create" target="right"><span class="icon-caret-right"></span>添加新闻类别</a></li>
  </ul> 
  <h2><span class="icon-pencil-square-o"></span>留言管理</h2>
  <ul>
  	<li><a href="${bbs }/leave/list" target="right"><span class="icon-caret-right"></span>留言管理</a></li>
  </ul>
  <h2><span class="icon-pencil-square-o"></span>案例管理</h2>
  <ul>
    <li><a href="${bbs}/case/list" target="right"><span class="icon-caret-right"></span>成功案例管理</a></li>
    <li><a href="${bbs }/case/create" target="right"><span class="icon-caret-right"></span>添加成功案例</a></li>
  </ul>
   <h2><span class="icon-pencil-square-o"></span>招聘信息</h2>
  <ul>
    <li><a href="${bbs}/recruit/list" target="right"><span class="icon-caret-right"></span>招聘管理</a></li>
    <li><a href="${bbs }/recruit/create" target="right"><span class="icon-caret-right"></span>发布招聘</a></li>
    <li><a href="${bbs }/recruit/applylist" target="right"><span class="icon-caret-right"></span>应聘管理</a></li>
  </ul>
  <h2><span class="icon-pencil-square-o"></span>友情链接</h2>
  <ul>
  	<li><a href="${bbs }/link/list" target="right"><span class="icon-caret-right"></span>友情链接管理</a>
  	<li><a href="${bbs }/link/create" target="right"><span class="icon-caret-right"></span>添加友情链接</a>
  </ul>
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="${bbs }/user/list" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="${bbs }/user/list" name="right" width="100%" height="100%">
  	
  </iframe>
</div>
</body>
</html>