package cn.two.bbs.pojo;

import java.util.Date;

/**
 *用户表
 */
public class User extends BaseEntity{
	private String userId;//用户id
	private String username;//用户名
	private String password;//密码
	private Integer role;//用户等级
	private String lastLoginIp;//用户最后一次登录的ip
	private Integer times;
	private Date lostLoginTime;

	public Integer getTimes() {
		return times;
	}

	public void setTimes(Integer times) {
		this.times = times;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}
	
	public Date getLostLoginTime() {
		return lostLoginTime;
	}

	public void setLostLoginTime(Date lostLoginTime) {
		this.lostLoginTime = lostLoginTime;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", password=" + password + ", role=" + role
				+ ", lastLoginIp=" + lastLoginIp + ", times=" + times + ", lostLoginTime=" + lostLoginTime + "]";
	}
	
	
}
