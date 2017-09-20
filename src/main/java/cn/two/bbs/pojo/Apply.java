package cn.two.bbs.pojo;

import java.util.Date;

public class Apply {
	private String id;
	private String username;
	private String phone;
	private String parentId;
	private Date applyTime;
	@Override
	public String toString() {
		return "Apply [id=" + id + ", username=" + username + ", phone=" + phone + ", parentId=" + parentId
				+ ", applyTime=" + applyTime + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public Date getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}
	
}
