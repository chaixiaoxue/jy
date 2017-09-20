function changePass(){
	$(".info").hide();	
	$(".password").show();
	$(".user_data").css("background","#89B2C4");
	$(".user_theme").css("background","#FFF");
	$(".user_reply").css("background","#FFF");
}
function changeback(){
	$(".info").show();
	$(".mypost").hide();
	$(".password").hide();
	$(".user_data").css("background","#89B2C4");
	$(".user_theme").css("background","#FFF");
	$(".user_reply").css("background","#FFF");
}
function myinfo(){
	$(".info").show();
	$(".mypost").hide();
	$(".myreply").hide();
	$(".password").hide();
	$(".user_data").css("background","#89B2C4");
	$(".user_theme").css("background","#FFF");
	$(".user_reply").css("background","#FFF");
}
function mypost(){
	var userId = $("#userId").val();
	$(".mypost").show();
	$(".myreply").hide();
	$(".info").hide();
	$(".user_theme").css("background","#89B2C4");
	$(".user_data").css("background","#FFF");
	$(".user_reply").css("background","#FFF");
}
function myreply(){
	$(".myreply").show();
	$(".mypost").hide();
	$(".info").hide();
	$(".user_reply").css("background","#89B2C4");
	$(".user_data").css("background","#FFF");
	$(".user_theme").css("background","#FFF");
}
function login(){
	$(".login_interface").show();
}
function quxiao(){
	$(".login_interface").hide();
}
//注册校验
function checkForm(){
	var flag = true;
	flag = checkNull("username", "用户名不能为空") && flag;
	flag = checkNull("password", "密码不能为空") && flag;
	flag = checkNull("password2", "确认密码不能为空") && flag;
	flag = checkNull("nickname", "昵称不能为空") && flag;
	flag = checkNull("email", "邮箱不能为空") && flag;
	flag = checkNull("valistr", "验证码不能为空") && flag;
	flag = checkPassword("password", "两次密码不一致") && flag;
	flag = checkEmail("email", "邮箱格式不正确") && flag;
	return flag;
}

function checkPassword(name, msg){
	var psw1 = document.getElementsByName(name)[0].value;
	var psw2 = document.getElementsByName(name+"2")[0].value;
	setMsg(name+"2", "");
	if(psw2 == ""){
		setMsg(name+"2", "确认密码不能为空");
		return false;
	}
	if(psw1 != "" && psw2 != ""){
		if(psw1 != psw2){
			setMsg(name+"2", msg);
			return false;
		}
	}
	return true;
}

function checkEmail(name, msg){
	
	var email = document.getElementsByName(name)[0].value;
	var reg = /^\w+@\w+(\.\w+)+$/;
	setMsg(name, "");
	
	if(email == ""){
		setMsg(name, "邮箱不能为空");
		return false;
	}
	
	if(email != "" && !reg.test(email)){
		setMsg(name, msg);
		return false;
	}
	$.ajax({
		type:'POST',
		url:'${bbs}/front/checkEmail',
		data:{ "email":email },
		dataType:'json',
		success:function(data){
			if(data == true){
				setMsg("email", "邮箱已存在!");
			}else{
				setMsg("email", "邮箱可用!");
			}
			
		}
	}); 
	return true;
}
function checkMoney(name, msg){
	
	var money = document.getElementsByName(name)[0].value;
	
	var reg = /^\d+$/;
	setMsg(name, "");
	
	if(money == ""){
		setMsg(name, "薪酬不能为空");
		return false;
	}
	
	if(money != "" && !reg.test(money)){
		setMsg(name, msg);
		return false;
	}
	return true;
}
function checkPhone(name, msg){
	
	var money = document.getElementsByName(name)[0].value;
	
	var reg = /^\d+$/;
	setMsg(name, "");
	
	if(money == ""){
		setMsg(name, "手机号不能为空");
		return false;
	}
	
	if(money != "" && !reg.test(money)){
		setMsg(name, msg);
		return false;
	}
	return true;
}
function checkNull(name, msg){
	var value = document.getElementsByName(name)[0].value;
	setMsg(name, "");
	if(value == ""){
		setMsg(name, msg);
		return false;
	}
	return true;
}

function setMsg(name, msg){
	document.getElementById(name+"_msg").innerHTML = msg;
}

/*
 * 换一张验证码图片
 */
function changeImage(thisobj){
	thisobj.src = "ValiImage?time="+new Date().getTime();
	/*$.ajax({
		type:'POST',
		url:'/front/ValiImage',
		data:{ "time":new Date().getTime() },
		dataType:'json'
	});*/
}
/*
 * 校验用户名是否存在
 */
function ajaxCheckUserName(thisobj){
	var username = thisobj.value;
	//检查用户名是否为空
 	if(username == ""){
 		setMsg("username", "用户名不能为空");
 		return;
 	}
 	$.ajax({
		type:'POST',
		url:'${bbs}/front/checkUser',
		data:{ "username":username },
		dataType:'json',
		success:function(data){
			if(data == true){
				setMsg("username", "用户名已存在");
			}else{
				setMsg("username", "用户名可用!");
			}
			
		}
	}); 
 	
}
function userLogin(url){
	$.ajax({
		type:'POST',
		url:"/front/"+url,
		data:{ "username":$("#username").val(),password:$("#password").val() },
		dataType:'json',
		success:function(data){
			var page = document.referrer;
			if(data==true){
				if(page == ""){
					//如果是第一次登陆，则跳转到首页
					window.location.href="first";
				}else{
					//返回到上一页面并刷新
					location.href=document.referrer;
				}
			}else{
				$("#error").text('用户名密码错误');
			}
		}
	}); 
}



