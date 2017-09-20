package cn.two.bbs.controller;

import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.two.bbs.pojo.User;
import cn.two.bbs.service.UserService;
import cn.two.bbs.utils.GetIp;

import com.mysql.jdbc.StringUtils;

@Controller
public class LoginController {
	@Resource
	private UserService userService;
	@RequestMapping("tologin")
	public String tologin(){
		return "login";
	}
	@RequestMapping("/back/login")
	public String login(String username,String password,Model model,HttpServletRequest request){
		if(StringUtils.isNullOrEmpty(username)||StringUtils.isNullOrEmpty(password)){
			//输入的数据为空
			model.addAttribute("msg", "用户名或密码不能为空");
			return "login";
		}
		//先注释掉登录相关的
		
		UsernamePasswordToken token = new UsernamePasswordToken(username,password);
		Subject subject = SecurityUtils.getSubject();
		try {
			subject.login(token);
			User user = (User) subject.getPrincipal();
			//System.out.println(user);
			GetIp getIp = new GetIp();
			String ip = getIp.getIpAddr(request);
			user.setLastLoginIp(ip);
			//设置sessiom超时时间是1小时
			Session session = subject.getSession();
			session.setTimeout(3600000);
			/*String serverName = request.getServerName();
			System.out.println(serverName);*/
			session.setAttribute("userSession", user);
			
			
			return "redirect:/home";
		} catch (Exception e) {
			model.addAttribute("msg", "用户名或者密码错误");
			return "login";
		}
		
		
		
	}
}
