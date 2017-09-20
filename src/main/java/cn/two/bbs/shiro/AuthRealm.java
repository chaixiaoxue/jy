package cn.two.bbs.shiro;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import cn.two.bbs.pojo.User;
import cn.two.bbs.service.UserService;
import cn.two.bbs.utils.MD5;

public class AuthRealm extends AuthorizingRealm{
	@Resource
	private UserService userService;
	@Override
	//该方法是用来做权限管理的
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		return null;
		
		
	}
	@Override
	//该方法是用来做认证模块的 
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		/**
		 * 该realm 是为shiro 安全管理器提供用来认证的realm 提供真实的用户数据
		 	供校验使用
		 	提供真实的用户
		 */
		UsernamePasswordToken loginToken = (UsernamePasswordToken) token;//强制转化为用户的token
		//String username = loginToken.getUsername();
		//用户名一定唯一
		//System.out.println(loginToken.getUsername());
		//System.out.println(MD5.getMD5Hash(loginToken.getUsername(), String.valueOf(loginToken.getPassword())));
		User user = userService.findUserByNAndP(loginToken.getUsername(), MD5.getMD5Hash(loginToken.getUsername(), String.valueOf(loginToken.getPassword())));
		//System.out.println(user);
		user.setLostLoginTime(new java.sql.Timestamp(new Date().getTime()));
		AuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
		
		
		return info;
	}
	
	
	
	
	
}
