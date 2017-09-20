package cn.two.bbs.shiro;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

import cn.two.bbs.utils.MD5;


public class AuthCredential extends  SimpleCredentialsMatcher{
	@Override
	//自定义的加密
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		
		//将用户的明文进行加密 需要获取用户名和密码
		UsernamePasswordToken loginToken = (UsernamePasswordToken) token;
		String username = loginToken.getUsername();
		//将数组转化为字符串
		String password = String.valueOf(loginToken.getPassword());
		String md5Password = MD5.getMD5Hash(username, password);
		loginToken.setPassword(md5Password.toCharArray());
		return super.doCredentialsMatch(loginToken, info);
	}
	
}
