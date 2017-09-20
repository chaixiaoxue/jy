<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <title>登录</title>  
    <link rel="stylesheet" href="${bbs}/staticfile/back/css/pintuer.css">
    <link rel="stylesheet" href="${bbs}/staticfile/back/css/admin.css">
    <script src="${bbs}/staticfile/back/js/jquery.js"></script>
    <script src="${bbs}/staticfile/back/js/pintuer.js"></script>  
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
            <form action="${bbs}/back/login" method="post">
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>公司后台管理中心</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input input-big" name="username" placeholder="登录账号" data-validate="required:请填写账号" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <br>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请填写密码" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>
                   </div>
                   <div >
                            <span style="color:red; margin-left: 130px" >${msg }</span>
                    </div>
                <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录"></div>
            </div>
            </form>          
        </div>
    </div>
</div>

</body>
</html>