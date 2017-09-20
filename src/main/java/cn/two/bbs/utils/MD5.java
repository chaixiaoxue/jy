package cn.two.bbs.utils;

import org.apache.shiro.crypto.hash.Md5Hash;

public class MD5 {
	public static void main(String[] args) {
		String password = "admin";
		//source明文密码
		//salt 佐料 自己定义
		//hashIterations 哈希次数
		Md5Hash md5Hash = new Md5Hash(password, "12345", 3);
		System.out.println(md5Hash);
 	}
	public static  String getMD5Hash(String userName,String password){
		Md5Hash md5Hash = new Md5Hash(password, userName, 3);
		return md5Hash.toString();
	}
}
