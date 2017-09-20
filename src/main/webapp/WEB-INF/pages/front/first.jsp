<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>聚优人力首页</title>
	<link href="${bbs }/staticfile/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${bbs }/staticfile/css/style.css" rel="stylesheet" type="text/css" />
	<script src="${bbs }/staticfile/js/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
	<script src="${bbs }/staticfile/js/jquery.SuperSlide.2.1.1.source.js" type="text/javascript"></script>
	<script type="text/javascript" src="${bbs }/staticfile/js/slider.js"></script>	
	<script src="${bbs }/staticfile/js/fk.js" type="text/javascript"></script>
</head>

<!--顶部样式-->
<body>
<!--顶部样式-->
<div id="header">
 <div id="top">
  <div class="top">
 <div class="logo"><a href="javascript:void(0);"><img src="${bbs }/staticfile/images/logo.png" /></a></div>
  <div class="Search">
  
  <p><form>
	</form>   </p>
 </div>
 </div>
 <div class="Hotline"><img  src="${bbs }/staticfile/images/Hotline.png" /></div>
 <div id="Menu">
  <ul id="nav">
	    <li class="mainlevel" id="mainlevel"><a href="front" target="_blank" >首页</a>          
        </li>
        
		   <li class="mainlevel" id="mainlevel"><a href="javascript:void(0);" target="_blank"> 聚优资讯</a>
           <ul id="sub">
		    <div class="Arrow"></div>
			<c:forEach items="${news}" var="d" varStatus="status">
			<li><a href="front/new?id=${d.id }"  target="_blank">${d.title }</a></li>
				
			</c:forEach>
			<li><a href="front/talent"  target="_blank">人才中心</a></li>				
          </ul>
        </li>
		   <li class="mainlevel" id="mainlevel"><a href="front/Recruitment" target="_blank" class="Activity">最新招聘</a>
        </li>
        
		 <li class="mainlevel" id="mainlevel"><a href="javascript:void(0)" target="_blank" class="Review">关于聚优</a>
           <ul id="sub">
		   <div class="Arrow"></div>
		   <c:forEach items="${comList}" var="d" varStatus="status">
			<li><a href="front/about?id=${d.id }"  target="_blank">${d.title }</a></li>
				
			</c:forEach>
          </ul>
        </li>
		 <li class="mainlevel" id="mainlevel"><a href="Contact_us.html" target="_blank" class="Campsite">联系我们</a>
           <ul id="sub">
		   <div class="Arrow"></div>
			<li><a href="front/call" target="_blank">联系方式</a></li>
			<li><a href="front/message" target="_blank">在线留言</a></li>
			<li><a href="front/resume" target="_blank">简历注册</a></li>			
          </ul>
        </li>		
	 </ul>
 </div>
 </div>
</div>

<!--qq样式-->
<!-- 代码 开始 -->
<div id="online_qq_layer">
    <div id="online_qq_tab">
      <div class="online_icon">
        <a title="" id="floatShow" style="display:none" href="javascript:void(0);">&nbsp;</a>
        <a title="" id="floatHide" style="display:block" href="javascript:void(0);">&nbsp;</a>
      </div>
    </div>
    <div id="onlineService" style="display: block;">
      <div class="online_windows overz">
          <div class="online_w_top"></div>
          <div class="online_w_c overz">
            <div id="online_qq">
               <ul class="qq_ul fn-clear">
						<li class="kfli" onclick="openQQ('${Webset.qq1}')"><img src="${bbs }/staticfile/images/Line_qq.png" border="0" /> 业务咨询</li>  
						<li class="kfli" onclick="openQQ('${Webset.qq2}')"><img src="${bbs }/staticfile/images/Line_qq.png" border="0" /> 业务咨询</li>  
						<li class="kfli" onclick="openQQ('${Webset.qq3}')"><img src="${bbs }/staticfile/images/Line_qq.png" border="0" /> 客服服务</li>  
						<li class="kfli" onclick="openQQ('${Webset.qq4}')"><img src="${bbs }/staticfile/images/Line_qq.png" border="0" /> 投诉建议</li> 
                </ul>
            </div>
            <div class="phone_Advisory">
 <p class="${bbs }/staticfile/phone_img"></p>
 <p class="Number">${Webset.phone}</p>
 <p><img src="${bbs }/staticfile/images/QQ_weixin.jpg" width="85%" /></p>
</div>
          </div>
          <div class="online_w_bottom"></div>
      </div>
    </div>
</div>

<script>  
    var online = new Array();  
</script>  
<script type= "text/javascript" src="http://webpresence.qq.com/getonline?Type=1&799129700:363576965:2193744200:1315797152" ></script>  
<script type="text/javascript">  
    for (var i = 0; i < online.length; i++) {  
        if (online[i] == 0) {  
            $(".kfli img").eq(i).attr("src","${bbs }/staticfile/images/not_qq.png");  
        } else {  
            $(".kfli img").eq(i).attr("src",'${bbs }/staticfile/images/Line_qq.png');  
        }  
    }  
        
  
    window.onscroll = function () {  
        if (document.documentElement.scrollTop + document.body.scrollTop > 100) {  
            document.getElementById("scrollto").style.display = "block";  
        }  
        else {  
            document.getElementById("scrollto").style.display = "none";  
        }  
    }  
    function OpenSmallWindows(strURL, scrollbar, width, height, left, top) {  
        window.open(strURL, "_blank",  
     "status=no,resizable=0,toolbar=no,menubar=no,scrollbars=" + scrollbar + ",width=" + width + ",height=" + height + ",left=" + left + ",top=" + top + "");  
    }  
    function openQQ(qq) {  
        window.location.href = "tencent://message/?uin=" + qq + "&Site=gbgjs.com&Menu=yes";  
    }  
</script>    
<!--结束-->
<div class="Share">
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"4","bdPos":"left","bdTop":"120"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
</div>
<!--幻灯片样式-->
<div class="banner">
   <div class="Slide">
  <div id="slideBox" class="slideBox">
			<div class="hd">
				<ul></ul>
			</div>
			<div class="bd">
				<ul>
					<c:forEach items="${pptimg}" var="d" varStatus="status">
			<li><a href="javascript:void(0);" target="_blank"><img src="${bbs }${d.address }" /></a></li>
				
			</c:forEach>
	
				</ul>
			</div>
			<a class="prev" href="javascript:void(0)"></a>
			<a class="next" href="javascript:void(0)"></a>
		</div>
		<script type="text/javascript">
		jQuery(".slideBox").slide({ titCell:".hd ul", mainCell:".bd ul",effect:"leftLoop",autoPlay:true,autoPage:true,triggerTime:1000,interTime:5000});
		</script>
  </div>
  </div>
 </div>
 <div id="Service">
   <div id="main">
     <div class="titler_name"><img src="${bbs }/staticfile/images/title_img_07.png" /></div>
	 <ul class="Service_link">
	  <li><a href="front/service?id=21" class="gw"></a></li>
	  <li><a href="front/service?id=22" class="lw"></a></li>
	  <li><a href="front/service?id=25" class="sb"></a></li>
	  <li><a href="front/service?id=23" class="xz"></a></li>
	  <li><a href="front/service?id=24" class="lt"></a></li>
	  <li><a href="front/service?id=26" class="zx"></a></li>
	 </ul>
    </div>
 </div>
 <div id="main"> 
 <div class="style">
   <div class="Knowledge">
    <div class="title_name"><img src="${bbs }/staticfile/images/title_img_10.png" /></div>
   <ul class="contents">
     <li class="Pale_blue">
	 <p><em></em><a href="${bbs }/front/News_Details?id=${new1.id}">${new1.title }</a></p>
	 <p class="Profile">${new1.content }                                                <a href="${bbs }/front/News_Details?id=${new1.id}" class="With"> 详细<< </a></p>
	 </li>
	  <li style="background:#feffe2 ">
	 <p><em></em><a href="${bbs }/front/News_Details?id=${new2.id}">${new2.title }</a></p>
	 <p class="Profile">${new2.content }                                                <a href="${bbs }/front/News_Details?id=${new2.id}" class="With"> 详细<< </a></p>
	 </li>
	  <li >
	 <p><em class="red_yuan"></em><a href="${bbs }/front/News_Details?id=${new3.id}">${new3.title }</a></p>
	 <p class="Profile">${new3.content }                                                <a href="${bbs }/front/News_Details?id=${new3.id}" class="With"> 详细<< </a></p>
	 </li>
	  <li >
	 <p><em class="red_yuan"></em><a href="${bbs }/front/News_Details?id=${new4.id}">${new4.title }</a></p>
	 <p class="Profile">${new4.content }                                                <a href="${bbs }/front/News_Details?id=${new4.id}" class="With"> 详细<< </a></p>
	 </li>
	  <li style="background:#fffce8">
	 <p><em></em><a href="${bbs }/front/News_Details?id=${new5.id}">${new5.title }</a></p>
	 <p class="Profile">${new5.content }                                                <a href="${bbs }/front/News_Details?id=${new5.id}" class="With"> 详细<< </a></p>
	 </li>
	  <li style="background:#f0f0f0">
	 <p><em></em><a href="${bbs }/front/News_Details?id=${new6.id}">${new6.title }</a></p>
	 <p class="Profile">${new6.content }                                                <a href="${bbs }/front/News_Details?id=${new6.id}" class="With"> 详细<< </a></p>
	 </li>
   </ul>
   </div> 
   <!--新闻活动--> 
   <div class="Wire">
     <div class="title">${hangyeone.title }<span><a href="front/new?id=${hangyeone.id }">MORE</a></span></div>
	 <ul class="content">
	   <li>
	   <p><a href="${bbs }/front/News_Details?id=${hang1.id}">${hang1.title }</a><span><fmt:formatDate value='${hang1.createTime }' pattern="yyyy-MM-dd"/></span></p>
	   <p>${hang1.content }</p>
	   </li>
	    <li>
	   <p><a href="${bbs }/front/News_Details?id=${hang2.id}">${hang2.title }</a><span><fmt:formatDate value='${hang2.createTime }' pattern="yyyy-MM-dd"/></span></p>
	   <p>${hang2.content }</p>
	   </li>
	    <li>
	   <p><a href="${bbs }/front/News_Details?id=${hang3.id}">${hang3.title }</a><span><fmt:formatDate value='${hang3.createTime }' pattern="yyyy-MM-dd"/></span></p>
	   <p>${hang3.content }</p>
	   </li>
	 </ul>
   </div>
   <div class="Activities">
    <div class="title">${company.title }<span><a href="front/new?id=${company.id }">MORE</a></span></div>
	 <ul class="content">
	   <li>
	   <p><a href="${bbs }/front/News_Details?id=${gs1.id}">${gs1.title }</a><span><fmt:formatDate value='${gs1.createTime }' pattern="yyyy-MM-dd"/></span></p>
	   <p>${gs1.content }</p>
	   </li>
	    <li>
	   <p><a href="${bbs }/front/News_Details?id=${gs2.id}">${gs2.title }</a><span><fmt:formatDate value='${gs2.createTime }' pattern="yyyy-MM-dd"/></span></p>
	   <p>${gs2.content }</p>
	   </li>
	    <li>
	   <p><a href="${bbs }/front/News_Details?id=${gs3.id}">${gs3.title }</a><span><fmt:formatDate value='${gs3.createTime }' pattern="yyyy-MM-dd"/></span></p>
	   <p>${gs3.content }</p>
	   </li>
	 </ul>
   </div> 
   </div>
   <!--客户-->
   <div  class="Customer">
    <div class="Cooperation">   
	<img src="${bbs }/staticfile/images/title_img_14.png" />
  </div>
  <div class="Partner_logo">
    <div class="multipleColumn" style="margin:0 auto">
			<div class="hd">
				<a class="next"><</a>
				<a class="prev">></a>
			</div>
			<div class="bd">
				<div class="ulWrap">

						<ul><!-- 把每次滚动的n个li放到1个ul里面 -->
							<c:forEach items="${cases1}" var="d" varStatus="status">
									<li>
								<div class="pic"><a href="${bbs }/front/onecase?id=${d.id}" target="_blank"><img src="${bbs }${d.parentId }" /></a></div>
							</li>
				
								</c:forEach>
							
							
						</ul>

						<ul><!-- 把每次滚动的n个li放到1个ul里面 -->
							<c:forEach items="${cases2}" var="d" varStatus="status">
									<li>
								<div class="pic"><a href="${bbs }/front/onecase?id=${d.id}" target="_blank"><img src="${bbs }${d.parentId }" /></a></div>
							</li>
				
								</c:forEach>
							
							
						</ul>								
				</div><!-- ulWrap End -->
			</div><!-- bd End -->
		</div><!-- multipleColumn End -->

		<script type="text/javascript">
			/*
				多行/多列的滚动解决思路在于：把每次滚动的n个li放到1个ul里面，然后用SuperSlide每次滚动1个ul，相当于每次滚动n个li
			*/
			jQuery(".multipleColumn").slide({titCell:".hd ul",mainCell:".bd .ulWrap",autoPage:true,effect:"leftLoop",autoPlay:false});
		</script>
  </div>
 </div>
   </div>
 </div>
 <div id="Cooperate">
			   				<div class="friends_title"><img src="${bbs }/staticfile/images/links_03.png" alt="聚优人力资源公司"></div>
			   				<ul>
			   					<c:forEach items="${links}" var="d" varStatus="status">
			<li><a href="${d.content }" target="_blank">${d.title }</a>&nbsp;&nbsp;|</li>
				
			</c:forEach>
          </ul>
			   					

			   				</ul>
			   			</div>
<!--底部样式-->
<!--底部样式-->
<div id="footer">
<div class="footer_img">
 <div id="main">
   <div class="link">
   <a href="front/about?id=11">关于聚优 </a> 
   <a href="front/call">联系方式 </a>
   <a href="front/Recruitment">最新招聘 </a>
   <a href="front/message">在线留言</a>
   </div>
   <div class="Telephone"></div>
   <div class="copyright">
    <p>张家口市聚优人力资源服务有限公司备案号：冀ICP备14023456号-1 </p>
	<p>电话：0313-2017699 &nbsp;&nbsp;&nbsp;&nbsp;     传真：0313-2017699&nbsp;&nbsp;&nbsp;&nbsp;      </p>



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
